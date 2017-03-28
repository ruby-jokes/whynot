require 'spec_helper'

describe 'meh' do

  it "should be true or false" do
    expect(meh.to_s).to match(/true|false/)
  end

end

describe 'fukkit' do

  after do
    ENV['RUBY_ENV'] = 'test'
  end

  context "should default outside of production" do

    before do
      ENV['RUBY_ENV'] = 'development'
    end

    context "even if the block would explode" do

      it "without a default value" do
        expect(fukkit { 1/0 }).to be_nil
      end

      it "with a default value" do
        expect(fukkit(42) { 1/0 }).to eql(42)
      end

    end

    context "when the block would return a value" do

      it "without a default value" do
        expect(fukkit { 1 }).to be_nil
      end

      it "with a default value" do
        expect(fukkit(42) { 1 }).to eql(42)
      end

    end

  end

  context "should use the real value" do

    before do
      ENV['RUBY_ENV'] = 'production'
    end

    context "unless the block would explode" do

      it "without a default value" do
        expect(fukkit { 1/0 }).to be_nil
      end

      it "with a default value" do
        expect(fukkit(42) { 1/0 }).to eql(42)
      end

    end

    context "when the block successfully returns a value" do

      it "without a default value" do
        expect(fukkit { 1 }).not_to be_nil
        expect(fukkit { 1 }).to eql(1)
      end

      it "with a default value" do
        expect(fukkit(42) { 1 }).not_to eql(42)
        expect(fukkit(42) { 1 }).to eql(1)
      end

    end

  end

end
