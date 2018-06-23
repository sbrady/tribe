#!/usr/bin/env ruby
require_relative '../app/boot'

bundle_calculator = BundleCalculator.new
format_bundle_factory = FormatBundleFactory.new(bundle_calculator)

puts LineHandler.new(format_bundle_factory).handle(ARGV).present
