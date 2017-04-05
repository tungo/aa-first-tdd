require "methods"
require "rspec"

describe "#my_uniq" do
  it "return empty array if argument is a empty array" do
    expect(my_uniq([])).to eq([])
  end

  it "raise error if argument is not an array" do
    expect { my_uniq(2) }.to raise_error("Argument is not an array")
  end

  it "return array if argument is an unique array" do
    expect(my_uniq([1, 2, 3])).to eq([1, 2, 3])
  end

  it "remove duplicate elements" do
    expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
  end

  let(:arr) { [2, 2, 1, 3, 1] }
  let(:r) { my_uniq(arr) }

  it "doesn't modify the original array" do
    expect(r).not_to be(arr)
  end
end

describe "Array#two_sum" do
  it "return empty array if array is empty"
  it "doesn't modify the original array"
  it "return empty array if no pairs"
  it "returns pairs in order"
end
