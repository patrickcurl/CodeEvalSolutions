# TRAILING STRING
# CHALLENGE DESCRIPTION:

# You are given two strings 'A' and 'B'. Print out a 1 if string 'B' occurs at the end of string 'A'. Else a zero.

# INPUT SAMPLE:

# The first argument will be the path to the input filename containing two strings, comma delimited, one per line. Ignore all empty lines in the input file. E.g.

# Hello World,World
# Hello CodeEval,CodeEval
# San Francisco,San Jose
# OUTPUT SAMPLE:

# Print out 1 if the second string occurs at the end of the first string. Else zero. Do NOT print out empty lines between your output. E.g.

# 1
# 1
# 0
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

File.open(ARGV[0]).each_line do |line|
  if line.include? "\n" then
    line = line.gsub(/[\n]/, '')
  end

  a = line.split(',')
  b = a[1]
  if a[0].include? " " then
    a = a[0].split(' ')
    a = a.last
  else
    a = a[0]
  end

  if (a.include? b) then
    print 1
  else
    print 0
  end
  print "\n"
end