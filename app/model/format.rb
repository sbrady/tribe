class Format

  attr_accessor :code, :bundle_rules

  def initialize(code, bundle_rules)
    @code = code
    @bundle_rules = bundle_rules
  end


  class << self

    FORMATS = [
        Format.new("IMG", [
            BundleRule.new(5, BigDecimal.new("450")),
            BundleRule.new(10, BigDecimal.new("800")),
        ]),
        Format.new("FLAC", [
            BundleRule.new(3, BigDecimal.new("427.50")),
            BundleRule.new(6, BigDecimal.new("810")),
            BundleRule.new(9, BigDecimal.new("1147.50")),
        ]),
        Format.new("VID", [
            BundleRule.new(3, BigDecimal.new("570.00")),
            BundleRule.new(5, BigDecimal.new("900.00")),
            BundleRule.new(9, BigDecimal.new("1530.00")),
        ])
    ]


    def find_by_code(code)
      FORMATS.find {|format| format.code == code}
    end

  end


end

