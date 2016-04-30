
def benchmark
  starting_time = Time.now
  yield()
  ending_time = Time.now
  ending_time - starting_time
end
#The string to test
long_string = "apple"*100000000
#takes long string and calls reverse method to benchmark how long it takes
running_time = benchmark { long_string.reverse }
 #outputs results
puts "string.reverse took #{running_time} seconds to run"