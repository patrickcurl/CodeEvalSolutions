# DECIMAL TO BINARY
# CHALLENGE DESCRIPTION:

# Given a decimal (base 10) number, print out its binary representation.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename containing whole decimal numbers greater or equal to 0, one per line.
# Ignore all empty lines. E.g.

# 2
# 10
# 67
# OUTPUT SAMPLE:

# Print the binary representation, one per line. E.g.

# 10
# 1010
# 1000011
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

File.open(ARGV[0]).each_line do |line|
  a = line.to_i.to_s(2)
  print a
  print "\n"
end