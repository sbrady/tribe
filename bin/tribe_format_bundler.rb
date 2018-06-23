#!/usr/bin/env ruby
require_relative '../app/boot'


puts LineHandler.new(FormatBundleFactory.new).handle(ARGV).present
