require 'benchmark'

def find_shortest_string(arr)
  arr.min_by { |str| str.length }
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string(['flower', 'juniper', 'lily', 'dadelion'])

  # Don't forget to add your own!

  time1 = Benchmark.measure {
    find_shortest_string(['flower', 'juniper'])
  }
  time2 = Benchmark.measure {
    find_shortest_string([''])
  }
  time3 = Benchmark.measure {
    find_shortest_string(['flower', 'juniper', 'lily', 'dadelion'])
  }
  time4 = Benchmark.measure {
    find_shortest_string(%w(asdkfjh dkfjh askdfj ;asdlfjkh askl;dfjh asdfh jas;dfh jsdf asklfh jasklf asldf ;as jlaks jf;ash jdf;h jasdfkl;g jsd))
  }

  puts time1
  puts time2
  puts time3
  puts time4
end

# Please add your pseudocode to this file
# And a written explanation of your solution
