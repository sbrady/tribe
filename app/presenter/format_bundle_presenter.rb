class FormatBundlePresenter

  def initialize(formatBundles)
    @formatBundles = formatBundles
  end


  def present
    first = @formatBundles.first
    f = first.line_items.first
    "#{first.total_count} #{first.code} $800\n #{f.bundle_count} x #{f.bundle_size} $#{f.bundle_cost.to_s('F')}"
  end

end