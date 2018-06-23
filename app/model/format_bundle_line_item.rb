class FormatBundleLineItem

  attr_accessor :bundle_rule, :bundle_count

  def initialize(bundle_rule, bundle_count)
    @bundle_rule = bundle_rule
    @bundle_count = bundle_count
  end


  def bundle_size
    @bundle_rule.size
  end

  def bundle_cost
    @bundle_count * bundle_rule.cost
  end


end

