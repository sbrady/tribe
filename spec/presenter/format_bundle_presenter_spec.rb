require 'spec_helper'

describe FormatBundlePresenter do

  subject {FormatBundlePresenter.new(
                                    [
                                        FormatBundle.new('CODZ', 99, [
                                            FormatBundleLineItem.new(10, 1, BigDecimal.new("800"))
                                        ])
                                    ]
  )}

  it 'has the bundle heading' do
    heading = subject.present.split("\n").first
    expect(heading).to eql("99 CODZ $800")
  end

  it 'has the bundle line item' do
    heading = subject.present.split("\n").last
    expect(heading).to eql(" 1 x 10 $800.0")
  end


end
