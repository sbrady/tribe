require 'spec_helper'

describe FormatBundlePresenter do

  subject {FormatBundlePresenter.new(
                                    [
                                        FormatBundle.new('CODZ', 99)
                                    ]
  )}

  it 'has the bundle heading' do
    heading = subject.present.split("\n").first
    expect(heading).to eql("99 CODZ $800")
  end


end
