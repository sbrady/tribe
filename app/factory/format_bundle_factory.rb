require 'bigdecimal'
class FormatBundleFactory

  def create(code, total_items)
    FormatBundle.new(code, total_items,
                     make_line_items(code, total_items)
    )
  end

  private
  def make_line_items(code, total_items)
    rules = Format.find_by_code(code).bundle_rules
    BundleCalculator.new.calculate(total_items, rules).map {|rule, count|
      FormatBundleLineItem.new(rule.size, count, rule.cost * count)
    }.reject {|line_item| line_item.bundle_count == 0}
  end

end