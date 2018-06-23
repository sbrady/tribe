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

        result = subject.calculate(10, [bundle_rule_1, bundle_rule_2])

        expect(result).to eql({bundle_rule_1 => 2,
                               bundle_rule_2 => 0
                              })
      end

    end
  end


end
