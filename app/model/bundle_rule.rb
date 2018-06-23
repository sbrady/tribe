class BundleRule
  attr_accessor :size, :cost

  def initialize(size, cost)
    @size = size
    # raise 'Must use a BigDecimal for cost' unless cost.class == BigDecimal
    @cost = cost
  end

end

