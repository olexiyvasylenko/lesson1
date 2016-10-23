class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.length
  end

  def reverse
    @array.reverse
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort.reverse
  end

  def asc
    @array.sort
  end

  def odd
    @array.select { |item| ((item + 1) % 2).zero? }
  end

  def multiple_to_three
    @array.select { |item| (item % 3).zero? }
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.map { |item| item.to_f / 10 }
  end

  def chars
    array.collect { |i| ('a'...'z').to_a[i - 1].to_sym }
  end

  def switch
    index_min = @array.index(@array.min)
    index_max = @array.index(@array.max)
    min =   @array.min
    max =   @array.max
    @array[index_min] = max
    @array[index_max] = min
    @array
  end

  def before_min
    @array[0...@array.index(@array.min)]
  end

  def three_smallest
    @array.sort[0..2]
  end
end
