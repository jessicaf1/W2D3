require "stock_picker"
require "rspec"

describe "stock_picker" do

  it "returns correct indices on an increasing array" do  
    arr = [0, 10, 20, 30, 60]
    expect(stock_picker(arr)).to eq([0,4])
  end

  it "returns correct indices on a decreasing array" do
    arr = [100, 90, 80, 60, 40]
    expect(stock_picker(arr)).to eq([]) 
  end

  it "returns an empty array if array is empty" do 
    arr = []
    expect(stock_picker(arr)).to eq([])
  end

  it "returns first and last days if all prices same" do 
    arr = [10, 10, 10, 10, 10]
    expect(stock_picker(arr)).to eq([0,4])
  end

  it "returns correct indices on a randomized array" do 
    arr = [40, 20, 100, 80, 90]
    expect(stock_picker(arr)).to eq([1,2])
  end 

end 