class FormatBundle

  attr_accessor :code, :line_items

  def initialize(code, line_items)
    @code = code
    @line_items = line_items
  end


  def total_count
    line_items
        .map(&:total_size)
        .sum
  end

  def total_cost
    line_items
        .map(&:bundle_cost)
        .sum
  end

end

