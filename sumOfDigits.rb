# SUM OF DIGITS
# CHALLENGE DESCRIPTION:

# Given a positive integer, find the sum of its constituent digits.

# INPUT SAMPLE:

# The first argument will be a path to a filename containing positive integers, one per line. E.g.

# 23
# 496
# OUTPUT SAMPLE:

# Print to stdout, the sum of the numbers that make up the integer, one per line. E.g.

# 5
# 19
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

File.open(ARGV[0]).each_line do |line|
    x = 0
    line = line.to_s
    line.each_char do |i|
        x = x + i.to_i
    end
    print x.to_s + "\r\n"
end