require 'spec_helper'

describe FormatBundleFactory do

  let(:format_bundle_factory) {FormatBundleFactory.new(BundleCalculator.new)}

  describe "#create" do
    subject {format_bundle_factory.create("IMG", 20)}

    it 'returns FormatBundle' do
      expect(subject.code).to eql("IMG")
    end

    it 'returns FormatBundle TotalCount' do
      expect(subject.total_count).to eql(20)
    end

    it 'has the line_item' do
      expect(subject.line_items.size).to eql(1)
      expect(subject.line_items.first.bundle_size).to eql(10)
      expect(subject.line_items.first.bundle_count).to eql(2)
      expect(subject.line_items.first.bundle_cost).to eql(BigDecimal.new("1600"))
    end

  end

end