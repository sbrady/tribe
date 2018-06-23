require 'spec_helper'

describe FormatBundlePresenter do

  subject {FormatBundlePresenter.new(
      [
          FormatBundle.new('CODZ', [
              FormatBundleLineItem.new(BundleRule.new(10, BigDecimal.new("800")), 1),
              FormatBundleLineItem.new(BundleRule.new(20, BigDecimal.new("500")), 3)
          ])
      ]
  )}

  it 'has the bundle heading' do
    heading = subject.present.split("\n").first
    expect(heading).to eql("70 CODZ $2300.0")
  end

  it 'has the bundle line items' do
    line_items = subject.present.split("\n")
    expect(line_items[1]).to eql(" 1 x 10 $800.0")
    expect(line_items[2]).to eql(" 3 x 20 $1500.0")
  end


end
