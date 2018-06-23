require 'bigdecimal'
class FormatBundleFactory

  def initialize(bundle_calculator)
    @bundle_calculator = bundle_calculator
  end

  def create(code, total_items)
    FormatBundle.new(code, make_line_items(code, total_items))
  end

  private
  def make_line_items(code, total_items)
    rules = Format.find_by_code(code).bundle_rules
    @bundle_calculator.calculate(total_items, rules)
        .reject {|rule, count| count == 0}
        .map {|rule, count| FormatBundleLineItem.new(rule, count)}
  end

end