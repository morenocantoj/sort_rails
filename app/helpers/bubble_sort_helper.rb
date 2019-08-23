module BubbleSortHelper
  def bubblesort(array)
    array_size = array.size
    i = 0
    while i < (array_size - 1)
      swapped = false
      j = 0
      while j < (array_size - 1)
        if array[j] < array[j + 1]
          array = swap(array, j)
          swapped = true
        end
        j += 1
      end
      break unless swapped

      i += 1
    end
    array
  end

  def swap(array, position)
    first_element = array[position]
    second_element = array[position + 1]
    array[position] = second_element
    array[position + 1] = first_element
    array
  end
end
