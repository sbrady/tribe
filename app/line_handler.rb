class LineHandler

  def initialize(submission_bundle_factory)
    @submission_bundle_factory = submission_bundle_factory
  end

  def handle(line)
    line
        .each_slice(2)
        .to_a
        .map {|chunk|
          @submission_bundle_factory.create(chunk[1], chunk[0].to_i)
        }

    return FormatBundlePresenter.new
  end


end