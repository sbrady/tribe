class FormatBundlePresenter

  def initialize(formatBundles)
    @format_bundles = formatBundles
  end


  def present
    @format_bundles.map {|format_bundle|
      format_bundle.line_items
          .map {|line_item| present_line_items(line_item)}
          .unshift(present_heading(format_bundle))
    }.flatten.join("\n")
  end

  private
  def present_line_items(line_item)
    " #{line_item.bundle_count} x #{line_item.bundle_size} $#{line_item.bundle_cost.to_s('F')}"
  end

  def present_heading(format_bundle)
    "#{format_bundle.total_count} #{format_bundle.code} $#{format_bundle.total_cost.to_s('F')}"
  end

end