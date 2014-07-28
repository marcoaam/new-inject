require 'new_inject'

describe Array do
  it 'works as inject method  with a diferent + block' do
  	array = [1,2,3]
  	expect(array.new_inject(0) { |sum, n| sum + n}).to eq [1,2,3].inject(:+)
  end
  
  it 'works as inject method  with a diferent block' do
  	array = [1,2,3]
  	expect(array.new_inject(5) { |sum| sum }).to eq([1,2,3].inject(5){ |sum| sum })
  end

  it 'works as inject method  with a diferent + block' do
  	array = [1,2,3]
  	expect(array.new_inject { |sum, n| sum + n}).to eq 6
  end

  it 'works as inject method with a diferent * block' do
  	array = [1,2,3]
  	expect(array.new_inject(2) { |sum, n| sum * n}).to eq 12
  end

  it 'works as inject method with a diferent /  block' do
  	array = [1,2,3]
  	expect(array.new_inject(2) { |sum, n| sum / n}).to eq 0
  end

  it 'works as inject method with array of small values and :+ as arg' do
  	array = [1,2,3]
  	expect(array.new_inject(:+)).to eq 6
  end

  it 'works as inject method with array of small values and :* as arg' do
  	array = [1,2,3]
  	expect(array.new_inject(:*)).to eq 6
  end

  it 'works as inject method with with array of values and :* as arg' do
  	array = [3,2,3]
  	expect(array.new_inject(:*)).to eq 18
  end

  it 'works as inject method with array of values and :/ as arg' do
  	array = [6,2,3]
  	expect(array.new_inject(:/)).to eq 1
  end

  it 'works as inject method with array of values and :/ as arg' do
  	array = [1,2,3]
  	expect(array.new_inject(:/)).to eq 0
  end

  it 'works as inject method with array of big values and :* as arg' do
  	array = [99, 556, 3]
  	expect(array.new_inject(:*)).to eq 165132
  end

  it 'works as inject method with array of strings' do
    list = %w{ cat sheep bear }
    expect(list.new_inject{ |acc, word| acc.length > word.length ? acc : word }).to eq "sheep"
  end
  	
end