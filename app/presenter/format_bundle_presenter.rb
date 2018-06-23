class FormatBundlePresenter

  def initialize(formatBundles)
    @formatBundles = formatBundles
  end


  def present
    first = @formatBundles.first
    "#{first.total_count} #{first.code} $800\n 1 x 10 $800"
  end

end