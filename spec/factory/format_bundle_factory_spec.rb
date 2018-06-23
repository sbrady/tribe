require 'spec_helper'

describe FormatBundleFactory do

  subject {FormatBundleFactory.new}

  it 'returns FormatBundle' do
    result = subject.create("CODEZ", 0)
    expect(result.code).to eql("CODEZ")
  end

  it 'returns FormatBundle TotalCount' do
    result = subject.create("IMG", 10)
    expect(result.total_count).to eql(10)
  end


end