require 'spec_helper'

describe FormatBundlePresenter do

  subject {FormatBundlePresenter.new(
                                    [
                                        FormatBundle.new('CODZ')
                                    ]
  )}

  it 'has the bundle heading' do
    heading = subject.present.split("\n").first
    expect(heading).to eql("10 CODZ $800")
  end


end
