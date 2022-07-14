module MyEnumerable

  def all?(&block)
    result = true
    each do |element|
      if block.call(element)
        result = true
      else
        result = false
      end
    end
    result
  end

  def any?(&block)
    result = true
    each do |element|
      if block.call(element)
        result = true
      else
        result = false
      end
    end
    result
  end


end
