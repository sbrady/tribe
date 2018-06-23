require 'spec_helper'

describe BundleCalculator do

  subject {BundleCalculator.new}

  describe '#calculate' do

    context 'When an exact fit' do

      it "fits into the first bundle" do
        bundle_rule_1 = BundleRule.new(5, nil)

        result = subject.calculate(5, [bundle_rule_1])

        expect(result).to eql({bundle_rule_1 => 1,
                              })
      end


      it "fits into the last bundle" do
        bundle_rule_1 = BundleRule.new(5, nil)
        bundle_rule_2 = BundleRule.new(20, nil)

        result = subject.calculate(40, [bundle_rule_1, bundle_rule_2])

        expect(result).to eql({bundle_rule_1 => 0,
                               bundle_rule_2 => 2
                              })
      end


      it "fits into the last two bundles" do
        bundle_rule_1 = BundleRule.new(3, nil)
        bundle_rule_2 = BundleRule.new(6, nil)
        bundle_rule_3 = BundleRule.new(9, nil)

        result = subject.calculate(15, [bundle_rule_1, bundle_rule_2, bundle_rule_3])

        expect(result).to eql({bundle_rule_1 => 0,
                               bundle_rule_2 => 1,
                               bundle_rule_3 => 1,
                              })
      end


    end
  end


end
