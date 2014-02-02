# HEX TO DECIMAL
# CHALLENGE DESCRIPTION:

# You will be given a hexadecimal (base 16) number. Convert it into decimal (base 10).

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line in this file contains a hex number. You may assume that the hex number does not have the leading 'Ox'. Also all alpha characters (a through f) in the input will be in lowercase. E.g.

# 9f
# 11
# OUTPUT SAMPLE:

# Print out the equivalent decimal number. E.g.

# 159
# 17
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

File.open(ARGV[0]).each_line do |line|
  print line.hex
  print "\n"
end