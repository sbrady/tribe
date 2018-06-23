require 'spec_helper'

describe LineHandler do

  let(:mock_submission_bundle_factory) {spy('FormatBundleFactory')}
  subject {LineHandler.new(mock_submission_bundle_factory)}

  before do
    allow(mock_submission_bundle_factory).to receive(:create).and_return(
        [
            FormatBundle.new("IMG",[FormatBundleLineItem.new(BundleRule.new(10, BigDecimal.new("800")), 1)])
        ]
    )

  end

  it 'uses the format type and count to get the bundles' do
    subject.handle(["10", "IMG", "15", "FLAC"])
    expect(mock_submission_bundle_factory).to have_received(:create).with("IMG", 10)
    expect(mock_submission_bundle_factory).to have_received(:create).with("FLAC", 15)
  end

  it "returns a presenter" do
    output = subject.handle(["10", "IMG"]).present

    expect(output).to include("10 IMG $800")
    expect(output).to include("1 x 10 $800")
  end


end