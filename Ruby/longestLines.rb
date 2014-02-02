# LONGEST LINES
# CHALLENGE DESCRIPTION:

# Write a program to read a multiple line text file and write the 'N' longest lines to stdout. Where the file to be read is specified on the command line.

# INPUT SAMPLE:

# Your program should read an input file (the first argument to your program will be a path to a filename). The first line contains the value of the number 'N' followed by multiple lines. You may assume that the input file is formatted correctly and the number on the first line i.e. 'N' is a valid positive integer. E.g.

# 2
# Hello World
# CodeEval
# Quick Fox
# A
# San Francisco
# OUTPUT SAMPLE:

# The 'N' longest lines, newline delimited. Ignore all empty lines in the input. Ensure that there are no trailing empty spaces on each line you print. Also ensure that the lines are printed out in decreasing order of length i.e. the output should be sorted based on their length. E.g.

# San Francisco
# Hello World
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

a = []
File.open(ARGV[0]).each_line do |line|

    a.push(line.gsub(/[\n]/, ''))
end
b = a[0].to_i
a.delete_at(0)
c = a.sort_by(& :length).pop(b).reverse
c.each_with_index do |x,i|
    print x
    if ( i != b) then
      print "\n"
    end
end