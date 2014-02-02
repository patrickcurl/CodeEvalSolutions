# HAPPY NUMBERS
# CHALLENGE DESCRIPTION:

# A happy number is defined by the following process. Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers, while those that do not end in 1 are unhappy numbers.

# INPUT SAMPLE:

# The first argument is the pathname to a file which contains test data, one test case per line. Each line contains a positive integer. E.g.

# 1
# 7
# 22
# OUTPUT SAMPLE:

# If the number is a happy number, print out 1. If not, print out 0. E.g

# 1
# 1
# 0
# For the curious, here's why 7 is a happy number: 7->49->97->130->10->1. Here's why 22 is NOT a happy number: 22->8->64->52->29->85->89->145->42->20->4->16->37->58->89 ...

# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

File.open(ARGV[0]).each_line do |line|
 # a = line.to_i
  a = line.to_i
  count = 0
  while (count < 40) do
    a = a.to_s.split('').map(& :to_i) #[4,9]
    a.each_with_index do |x,i|
        a[i] = a[i]**2
    end # [16, 81]

    a = a.inject(:+)
     if (a == 1) then
      print 1
      break
    end
    if (count == 39) then
      print 0
    end
    count +=1
  end
  print "\n"
end