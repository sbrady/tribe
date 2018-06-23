require 'spec_helper'

describe Format do


  describe ".find_by_code" do

    it "returns the correct format for IMG" do
      format = Format.find_by_code("IMG")

      expect(format.code).to eql("IMG")
      expect(format.bundle_rules.size).to eql(2)
      expect(format.bundle_rules[0].size).to eql(5)
      expect(format.bundle_rules[0].cost).to eql(BigDecimal.new("450"))
      expect(format.bundle_rules[1].size).to eql(10)
      expect(format.bundle_rules[1].cost).to eql(BigDecimal.new("800"))
    end

    it "returns the correct format for Flac" do
      format = Format.find_by_code("FLAC")

      expect(format.code).to eql("FLAC")
      expect(format.bundle_rules.size).to eql(3)
      expect(format.bundle_rules[0].size).to eql(3)
      expect(format.bundle_rules[0].cost).to eql(BigDecimal.new("427.50"))
      expect(format.bundle_rules[1].size).to eql(6)
      expect(format.bundle_rules[1].cost).to eql(BigDecimal.new("810"))
      expect(format.bundle_rules[2].size).to eql(9)
      expect(format.bundle_rules[2].cost).to eql(BigDecimal.new("1147.50"))
    end

  end


end
