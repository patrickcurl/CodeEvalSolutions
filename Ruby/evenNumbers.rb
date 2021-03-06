# EVEN NUMBERS
# CHALLENGE DESCRIPTION:

# Write a program which checks input numbers and determines whether a number is even or not.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Input example is the following

# 701
# 4123
# 2936
# OUTPUT SAMPLE:

# Print 1 if the number is even or 0 if the number is odd.

# 0
# 0
# 1
# All numbers in input are integers > 0 and < 5000.

# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

File.open(ARGV[0]).each_line do |line|
  if line.to_i.even?
    print 1
  else
    print 0
  end
  print "\n"
end