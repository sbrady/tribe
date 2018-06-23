class FormatBundlePresenter

  def initialize(formatBundles)
    @format_bundles = formatBundles
  end


  def present

    first = @format_bundles.first
    heading = "#{first.total_count} #{first.code} $#{first.total_cost.to_s('F')}"

    first.line_items
        .map {|line_item| " #{line_item.bundle_count} x #{line_item.bundle_size} $#{line_item.bundle_cost.to_s('F')}"}
        .unshift(heading)
        .join("\n")

  end

end