require 'rspec'

require_relative 'linear_search'

describe 'LinearSearch' do
  let(:test_case) { 1.upto(20) }

  context "when number is present" do
    it "should return true" do
      expect(find(3, test_case)).to eq true
    end
  end

  context "when number is missing" do
    it "should return false" do
      expect(find(30, test_case)).to eq false
    end
  end
end
