class BundleCalculator

  def calculate(number_of_items, bundle_rules)

    bundle_rules = bundle_rules.sort_by(&:size)

    size_to_count = setup_size_to_count_map(bundle_rules)

    run_calc(size_to_count, bundle_rules, number_of_items)
  end

  private

  def run_calc(size_to_count, bundle_rules, number_of_items)

    return size_to_count if number_of_items == 0
    bundle_rules.reverse_each.each do |rule|
      if number_of_items % rule.size == 0
        size_to_count[rule] = size_to_count[rule] + 1
        return run_calc(size_to_count, bundle_rules, number_of_items - rule.size)
      end

    end

    size_to_count
  end
end

def setup_size_to_count_map(bundle_rules)
  size_to_count = {}
  bundle_rules.each do |bundle|
    size_to_count[bundle] = 0
  end
  size_to_count
end