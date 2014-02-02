# PRIME NUMBERS
# CHALLENGE DESCRIPTION:

# Print out the prime numbers less than a given number N. For bonus points your solution should run in N*(log(N)) time or better. You may assume that N is always a positive integer.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line in this file is one test case. Each test case will contain an integer n < 4,294,967,295. E.g.

# 10
# 20
# 100
# OUTPUT SAMPLE:

# For each line of input, print out the prime numbers less than N, in ascending order, comma delimited. (There should not be any spaces between the comma and numbers) E.g.

# 2,3,5,7
# 2,3,5,7,11,13,17,19
# 2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

# Sponsored Challenge Eligibility

# In order to be eligible to push solution to the employer (Vertical Brands), you must satisfy the following conditions:

# Location: United States
# Minimum Education: High School
# Your email / resume will always be sent to the employer

require 'prime'
File.open(ARGV[0]).each_line do |line|
    a = Prime.take_while {|p| p < line.to_i }
    a.each_with_index do |f, index|
        print f
        unless (index==a.size-1) then print ',' end
    end
    print "\n"

end