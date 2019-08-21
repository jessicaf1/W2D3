require 'rspec'
require 'array_methods'

describe "my_uniq" do 
  subject(:arr) { [1,2,1,3,3] }

  it "checks that method takes in an array" do 
    my_uniq(arr)
    expect(arr).to be_a(Array)
  end 

  it "checks for unique values" do 
    output = arr.uniq
    value = my_uniq(arr)
    expect(output).to eq(value)
  end

  it "checks that elements are ordered" do 
    # output = arr.uniq.sort
    # value = my_uniq(arr)
    # expect(output).to eq(value)

    # output = arr.uniq.sort
    # value = my_uniq(arr)
    expect(arr.uniq).to eq(my_uniq(arr))
  end

end

describe "two_sum" do
  subject(:arr) { [-1, 0, 2, -2, 1] }


  it "all pairs of elements should sum to zero" do
    expect(arr.two_sum).to eq([[0,4],[2,3]])
  end

  it "should return an empty array if no matches are found" do
    expect([5,4,3,2,1].two_sum).to eq([])
  end

  it "should return indices in ascending order" do 
    expect(arr.two_sum).to eq([[0,4],[2,3]])
  end 

end

describe "my_transpose" do 
  subject(:matrix) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }

  it "should transpose array matrices rows and columns" do
    output = [ [0, 3, 6], [1, 4, 7], [2, 5, 8] ]
    expect(my_transpose(matrix)).to eq(output)
  end

  it "should return an empty array if array is empty" do 
    expect(my_transpose([])).to eq([])
  end

end
