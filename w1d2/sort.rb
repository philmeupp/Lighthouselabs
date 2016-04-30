##
## Create your own sort method. Attemped merge sort, failed miserably.
## Settled for bubble sort.
##

arr = [3,6,7,123,23,44,87,90]

def bubble_sort(arr)
  sorted = false
  #initiate until loop. (loops as long as condition runs false)
  until sorted
    sorted = true
    (arr.length-1).times do |i|
      #checks to see if one index is greater than the next
      if arr[i] > arr[i+1]
      #swap  
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = false
      end
    end
  end
end

bubble_sort(arr)
puts arr

###
###Refactored and used a simple loop
###
arr = [3,6,7,123,23,44,87,90]

def bubble_sort(arr)
  swapped = false
  loop do
    (arr.length-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
  break if swapped
  end
end

bubble_sort(arr)
puts arr


###
## Personal notes
###
# arr.length-1 is the end of the array b/c arrays are zero based index's. 
# When arr[i+1] reaches it will give a "Fixnum with nil failed" error 
# because index does not exist
###
# Can use "while" loop just as long as you switch the condition
# to run true, opposed to "until", which runs until false.
###




