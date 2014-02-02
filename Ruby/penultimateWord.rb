# PENULTIMATE WORD
# CHALLENGE DESCRIPTION:

# Write a program which finds the next-to-last word in a string.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Input example is the following

# some line with text
# another line
# Each line has more than one word.

# OUTPUT SAMPLE:

# Print the next-to-last word in the following way.

# with
# another
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

File.open(ARGV[0]).each_line do |line|
  a = line.split(" ")
  size = a.size
  print a[size-2]
  print "\n"

end