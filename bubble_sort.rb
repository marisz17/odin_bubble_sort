def bubble_sort(array)
  
  def number_sort(a,b)
    if a > b 
      return [b,a]
    else
      return [a,b]
    end
  end

  def slice_array(array, begin_index,end_length)
    array.slice(begin_index, end_length)
  end

  def for_loop(array)
    new_array = array
    holding_array = []
    for i in 0...array.length 
      if i == 0
        holding_array << number_sort(new_array[0], new_array[1])
        holding_array << slice_array(new_array, 2, new_array.length - 2)
        new_array = holding_array.flatten
        holding_array = []
      elsif i == (array.length - 1)
        return new_array
      else
        index = i + 2
        holding_array << slice_array(new_array, 0, i)
        holding_array << number_sort(new_array[i], new_array[i+1])
        holding_array << slice_array(new_array, index, new_array.length - index)
        new_array = holding_array.flatten
        holding_array = []
      end
    end
    new_array
  end
  return_array = array
  for j in 0...array.length
    return_array = for_loop(return_array)
  end
  
  return_array
  
end

p bubble_sort([4,3,78,2,0,2])
