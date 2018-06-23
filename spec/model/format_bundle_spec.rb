require 'spec_helper'

describe FormatBundle do


  subject {FormatBundle.new("IMG", 10)}

  it 'has code' do
    expect(subject.code).to eql("IMG")
  end


end
