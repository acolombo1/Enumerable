class MyList
  def initialize (a, b, c, d)
    @list = [a, b, c, d]
  end
  def #each
    yield @list[0]
    yield @list[1]
    yield @list[2]
    yield @list[3]
  end
end

list = MyList.new(1, 2, 3, 4)
list.all? {|e| e < 5}