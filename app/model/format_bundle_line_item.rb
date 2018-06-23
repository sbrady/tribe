class FormatBundleLineItem

  attr_accessor :bundle_size, :bundle_count, :bundle_cost

  def initialize(bundle_size, bundle_count, bundle_cost)
    @bundle_size = bundle_size
    @bundle_count = bundle_count
    @bundle_cost = bundle_cost
  end



end

