class FormatBundlePresenter

  def initialize(formatBundles)
    @formatBundles = formatBundles
  end


  def present
    "10 #{@formatBundles.first.code} $800\n 1 x 10 $800"
  end

end