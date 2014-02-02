# COUNTING PRIMES
# CHALLENGE DESCRIPTION:

# Given two integers N and M, count the number of prime numbers between N and M (both inclusive)

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line in this file contains two comma separated positive integers. E.g.

# 2,10
# 20,30
# OUTPUT SAMPLE:

# Print out the number of primes between N and M (both inclusive)

# 4
# 2
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

require "prime"
File.open(ARGV[0]).each_line do |line|
  a = line.strip.split(',')
  a = a.collect{|b| b.to_i}
  primes = 0
  (a.first..a.last).each do |x|
    if x.prime? == true then
      primes +=1
    end
  end
  print primes
  print "\n"
end