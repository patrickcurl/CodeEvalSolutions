# FIND A WRITER
# CHALLENGE DESCRIPTION:

# You have a set of rows with names of famous writers encoded inside. Each row is divided into 2 parts by pipe char (|). The first part has a writer's name. The second part is a "key" to generate a name.

# Your goal is to go through each number in the key (numbers are separated by space) left-to-right. Each number represents a position in the 1st part of a row. This way you collect a writer's name which you have to output.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Input example is the following

# osSE5Gu0Vi8WRq93UvkYZCjaOKeNJfTyH6tzDQbxFm4M1ndXIPh27wBA rLclpg| 3 35 27 62 51 27 46 57 26 10 46 63 57 45 15 43 53

# 3Kucdq9bfCEgZGF2nwx8UpzQJyHiOm0hoaYP6ST1WM7Nks5XjrR4IltBeDLV vA| 2 26 33 55 34 50 33 61 44 28 46 32 28 30 3 50 34 61 40 7 1 31
# This input had 2 rows.

# OUTPUT SAMPLE:

# Print results in the following way.

# Stephen King 1947
# Kyotaro Nishimura 1930
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

File.open(ARGV[0]).each_line do |line|
  if line.include? "\n" then
    line = line.gsub(/[\n]/, '')
  end

  a = line.split('|')
  encoded = a[0].split('')
  key = a[1].split(" ")
  name = []
  key.each do |x|
    name.push(encoded[x.to_i - 1])
  end
  print name.join('')
  print "\n"
end