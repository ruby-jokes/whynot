require 'spec_helper'

describe 'meh' do

  it "should be true or false" do
    expect(meh.to_s).to match(/true|false/)
  end
end
