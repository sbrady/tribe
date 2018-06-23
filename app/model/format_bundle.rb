class FormatBundle

  attr_accessor :code, :total_count, :line_items

  def initialize(code, total_count, line_items)
    @code = code
    @total_count = total_count
    @line_items = line_items
  end

end

