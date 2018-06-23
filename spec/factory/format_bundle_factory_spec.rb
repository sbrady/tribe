require 'spec_helper'

describe FormatBundleFactory do

  subject {FormatBundleFactory.new}

  it 'returns FormatBundle' do
    result = subject.create("CODEZ", 0)
    expect(result.code).to eql("CODEZ")
  end



end