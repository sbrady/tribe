#!/usr/bin/env ruby
require_relative '../app/boot'


puts LineHandler.new(SubmissionBundleFactory.new).handle(ARGV).present
