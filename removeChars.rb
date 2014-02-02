# REMOVE CHARACTERS
# CHALLENGE DESCRIPTION:

# Write a program to remove specific characters from a string.

# INPUT SAMPLE:

# The first argument will be a path to a filename containing an input string followed by a comma and then the characters that need to be scrubbed. E.g.

# how are you, abc
# hello world, def
# OUTPUT SAMPLE:

# Print to stdout, the scrubbed strings, one per line. Trim out any leading/trailing whitespaces if they occur. E.g.

# how re you
# hllo worl
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

File.open(ARGV[0]).each_line do |line|
  a = line.split(',')[0]
  a = a.split(' ')
  b = line.split(',')[1]
  a.each_with_index do |f,i|
    a[i] = f.gsub(/[#{b}]/, '')
    print a[i]
    if i < (a.size - 1) then
      print " "
    end
  end

  print "\n"
end