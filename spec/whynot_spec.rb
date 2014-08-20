require 'spec_helper'

describe 'meh' do
  it "should be true or false" do
    expect(meh.to_s).to match(/true|false/)
  end

  it "takes an optional block" do
    expect(
      meh { :yay }.to_s
    ).to match(/^$|yay/)
  end
end

describe 'maybe' do
  it "should be true or false" do
    expect(maybe.to_s).to match(/true|false/)
  end

  it "takes an optional block" do
    expect(
      maybe { :yay }.to_s
    ).to match(/^$|yay/)
  end
end

describe 'mostly' do
  it "should be true or false" do
    expect(mostly.to_s).to match(/true|false/)
  end

  it "takes an optional block" do
    expect(
      mostly { :yay }.to_s
    ).to match(/^$|yay/)
  end
end

describe 'occasionally' do
  it "should be true or false" do
    expect(occasionally.to_s).to match(/true|false/)
  end

  it "takes an optional block" do
    expect(
      occasionally { :yay }.to_s
    ).to match(/^$|yay/)
  end
end
