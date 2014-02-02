# MTH TO LAST ELEMENT
# CHALLENGE DESCRIPTION:

# Write a program to determine the Mth to last element of a list.
# INPUT SAMPLE:

# The first argument will be a path to a filename containing a series of space delimited characters followed by an integer representing a index into the list (1 based), one per line. E.g.
# a b c d 4
# e f g h 2
# OUTPUT SAMPLE:

# Print to stdout, the Mth element from the end of the list, one per line. If the index is larger than the list size, ignore that input. E.g.

# a
# g
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

# Sponsored Challenge Eligibility

# In order to be eligible to push solution to the employer (HireVue), you must satisfy the following conditions:

# Location: United States
# Minimum Education: High School
# Your email / resume will always be sent to the employer

File.open(ARGV[0]).each_line do |line|
  a = line.strip.split(' ')
  num = a.last.to_i
  a.pop
  print a.reverse[num-1]
  print "\n"
end