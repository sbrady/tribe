require 'spec_helper'

describe FormatBundlePresenter do

  subject {FormatBundlePresenter.new(
      [
          FormatBundle.new('CODZ', [
              FormatBundleLineItem.new(BundleRule.new(10, BigDecimal.new("800")), 1),
              FormatBundleLineItem.new(BundleRule.new(20, BigDecimal.new("500")), 3)
          ]),
          FormatBundle.new('VIDZ', [
              FormatBundleLineItem.new(BundleRule.new(10, BigDecimal.new("777")), 1),
          ])

      ]
  )}

  it 'has the bundle headings' do
    heading_one = subject.present.split("\n").first
    expect(heading_one).to eql("70 CODZ $2300.0")

    heading_two = subject.present.split("\n")[3]
    expect(heading_two).to eql("10 VIDZ $777.0")
  end

  it 'has the bundle line items' do
    line_items = subject.present.split("\n")
    expect(line_items[1]).to eql(" 1 x 10 $800.0")
    expect(line_items[2]).to eql(" 3 x 20 $1500.0")
    expect(line_items[4]).to eql(" 1 x 10 $777.0")
  end


end
