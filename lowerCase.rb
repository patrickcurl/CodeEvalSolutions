# LOWERCASE
# CHALLENGE DESCRIPTION:

# Given a string write a program to convert it into lowercase.

# INPUT SAMPLE:

# The first argument will be a path to a filename containing sentences, one per line. You can assume all characters are from the english language. E.g.

# HELLO CODEEVAL
# This is some text
# OUTPUT SAMPLE:

# Print to stdout, the lowercase version of the sentence, each on a new line. E.g.

# hello codeeval
# this is some text
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

File.open(ARGV[0]).each_line do |line|
  print line.downcase
end