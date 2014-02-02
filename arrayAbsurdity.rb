# ARRAY ABSURDITY
# CHALLENGE DESCRIPTION:

# Imagine we have an immutable array of size N which we know to be filled with integers ranging from 0 to N-2, inclusive. Suppose we know that the array contains exactly one duplicated entry and that duplicate appears exactly twice. Find the duplicated entry. (For bonus points, ensure your solution has constant space and time proportional to N)

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line in this file is one test case. Ignore all empty lines. Each line begins with a positive integer(N) i.e. the size of the array, then a semicolon followed by a comma separated list of positive numbers ranging from 0 to N-2, inclusive. i.e eg.

# 5;0,1,2,3,0
# 20;0,1,10,3,2,4,5,7,6,8,11,9,15,12,13,4,16,18,17,14
# OUTPUT SAMPLE:

# Print out the duplicated entry, each one on a new line eg

# 0
# 4
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

File.open(ARGV[0]).each_line do |line|
    if line.include? "\n" then
      line = line.gsub(/[\n]/, '')
    end
    a = line.split(";")

    a = a.drop(1)
    a = a[0].to_s
    a = a.split(",")
    #print a
    a = a.collect{|s| s.to_i}
    dupe = 0
    a.each do |x|
        if a.count(x) > 1 then
          dupe = x.to_i
        end
    end

    print dupe unless line.empty?
    print "\n" unless line.empty?

end