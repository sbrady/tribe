class LineHandler

  def initialize(format_bundle_factory)
    @format_bundle_factory = format_bundle_factory
  end

  def handle(line)
    FormatBundlePresenter.new(create_format_bundles(line))
  end


  private
  def create_format_bundles(line)
    line
        .each_slice(2)
        .to_a
        .map {|chunk|
          @format_bundle_factory.create(chunk[1], chunk[0].to_i)
        }.flatten
  end


end