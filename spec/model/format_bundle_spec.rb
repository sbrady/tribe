require 'spec_helper'

describe FormatBundle do


  subject {FormatBundle.new("IMG", [
      FormatBundleLineItem.new(BundleRule.new(5, BigDecimal.new("11.00")), 2),
      FormatBundleLineItem.new(BundleRule.new(10, BigDecimal.new("22.00")), 1)
  ])}

  it 'has code' do
    expect(subject.code).to eql("IMG")
  end


  it 'has the total count' do
    expect(subject.total_count).to eql(20)
  end

  it 'has the total cost' do
    expect(subject.total_cost).to eql(BigDecimal.new("44.00"))
  end


end
