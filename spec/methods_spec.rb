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
  it "return empty array if array is empty" do
    expect([].two_sum).to eq([])
  end

  let(:arr) { [2, 3, -2, 1, 3, -1] }
  let(:r) { arr.two_sum }

  it "doesn't modify the original array" do
    expect(r).not_to be(arr)
  end

  it "return empty array if no pairs" do
    expect([1, 2, 3, 4].two_sum).to eq([])
  end

  it "returns pairs in order" do
    expect([2, 3, -2, 1, 3, -1].two_sum).to eq([[0, 2], [3, 5]])
  end
end

describe "#my_transpose" do
  it "raise error if argument is not an array" do
    expect { my_transpose(3) }.to raise_error("Argument is not an array")
  end

  it "raise error if argument is not a 2d array" do
    expect { my_transpose([1, 2, 3]) }.to raise_error("Argument is not a 2d array")
  end

  let(:arr) { [[1, 2], [1, 2]] }
  let(:r) { my_transpose(arr) }

  it "doesn't modify the original array" do
    expect(r).not_to be(arr)
  end

  it "transpose 2x2 array" do
    expect(my_transpose([[1, 2], [3, 4]])).to eq([[1, 3], [2, 4]])
  end

  it "transpose 3x3 array" do
    array3x3 = [[0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]]
    expect(my_transpose(array3x3)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end
end

describe "#stock_picker" do
  it "raise error if argument is not an array" do
    expect { stock_picker(3) }.to raise_error("Argument is not an array")
  end
  it "raise error if all of elements aren't number" do
    expect { stock_picker(["string"]) }.to raise_error("Argument is not an array of numbers")
  end
  let(:arr) { [1, 2, 3, 4] }
  let(:r) { stock_picker(arr) }
  it "doesn't modify the original array" do
    expect(r).not_to be(arr)
  end

  it "return index of most profitable pair" do
    expect(stock_picker([2, 1, 5, 8, 3, 4, 6])).to eq([1, 3])
  end

  it "return index of two days array" do
    expect(stock_picker([2, 4])).to eq([0, 1])
  end

  it "return nil if there aren't profitable pairs" do
    expect(stock_picker([9, 8, 7, 6, 5, 4, 3])).to be_nil
  end

  it "return correct days for an odd number of elements array" do
    expect(stock_picker([2, 1, 5, 3, 7, 4, 7])).to eq([1, 4])
  end
  it "return correct days for an even number of elements array" do
    expect(stock_picker([4, 8, 3, 6, 1, 9])).to eq([4, 5])
  end
end
