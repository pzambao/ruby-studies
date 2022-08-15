# This challenge aims to develop a method to sort an array without using the .sort method

def pedro_sort(arr)
  arr.each_with_index do |val, i|
    arr.each_with_index do |val, j|
      break if arr.size-1 == j

      if arr[j] > arr[j+1]
        arr[j+1], arr[j] = arr[j], arr[j+1] #Parallel Assignment to avoid using a variable for swapping.
      end

    end
  end
end

arr = [4,7,9,5,2]

p pedro_sort(arr)

