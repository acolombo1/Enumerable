require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    return to_enum(:each) unless block_given?

    size = @list.length
    index = 0

    until index == size
      yield(@list[index])
      index += 1
    end
    self
  end
end

list = MyList.new(1, 2, 3, 4, 10)
p(list.filter { |char| char >= 3 })
