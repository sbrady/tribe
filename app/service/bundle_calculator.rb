class BundleCalculator

  def calculate(number_of_items, bundle_rules)

    bundle_rules = bundle_rules.sort_by(&:size)

    depth_size_to_count = run_depth_calc(setup_size_to_count_map(bundle_rules), bundle_rules, number_of_items)
    if is_balanced?(depth_size_to_count, number_of_items)
      return depth_size_to_count
    end

    breadth_size_to_count = run_breadth_calc(setup_size_to_count_map(bundle_rules), bundle_rules, number_of_items)
    return re_run_with_out_large_bucket(bundle_rules, number_of_items) unless is_balanced?(breadth_size_to_count, number_of_items)

    breadth_size_to_count

  end

  private
  def re_run_with_out_large_bucket(bundle_rules, number_of_items)
    new_breadth_size_to_count = calculate(number_of_items, bundle_rules[0...-1])
    new_breadth_size_to_count[bundle_rules.last] = 0
    return new_breadth_size_to_count
  end

  def is_balanced?(size_to_count, number_of_items)
    size_to_count.map {|rule, count| rule.size * count}.sum - number_of_items == 0
  end

  def run_depth_calc(size_to_count, bundle_rules, number_of_items)

    return size_to_count if number_of_items == 0
    bundle_rules.reverse_each.each do |rule|
      allocated = number_of_items - rule.size
      if allocated >= 0
        size_to_count[rule] = size_to_count[rule] + 1
        return run_depth_calc(size_to_count, bundle_rules, allocated)
      end

    end

    size_to_count
  end


  def run_breadth_calc(size_to_count, bundle_rules, number_of_items)

    return size_to_count if number_of_items == 0
    allocated = number_of_items
    bundle_rules.reverse_each.each do |rule|
      if allocated - rule.size >= 0
        allocated = allocated - rule.size
        size_to_count[rule] = size_to_count[rule] + 1
      end
    end


    if allocated > 0 && allocated >= bundle_rules.first.size
      return run_breadth_calc(size_to_count, bundle_rules, allocated)
    end

    size_to_count
  end


  def setup_size_to_count_map(bundle_rules)
    size_to_count = {}
    bundle_rules.each do |bundle|
      size_to_count[bundle] = 0
    end

    size_to_count
  end

end
