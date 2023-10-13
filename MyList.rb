require_relative 'MyEnumerable'

class MyList
  include MyEnumerable

  attr_accessor :list

  def initialize(list)
    @list = list
  end

  def each
    @list.each { |item| yield item }
  end
end

# Create list object
list = MyList.new([1, 2, 3, 4])

#tests
result = list.all? { |e| e < 5 }
# => true
# result = list.all? { |e| e > 5 }
# => false

# result = list.any? { |e| e == 2 }
# => true
# result = list.any? { |e| e == 5 }
# => false

# result = list.filter {|e| e.even?} 
# => [2, 4]

print result
