# CALCULATE DISTANCE
# CHALLENGE DESCRIPTION:

# You have coordinates of 2 points and need to find the distance between them.

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Input example is the following

# (25, 4) (1, -6)
# (47, 43) (-25, -11)
# All numbers in input are integers between -100 and 100.

# OUTPUT SAMPLE:

# Print results in the following way.

# 26
# 90
# You don't need to round the results you receive.
# They must be integer numbers between -100 and 100.

# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

File.open(ARGV[0]).each_line do |line|
a = line.gsub(/[(),\n]/, "").split(" ").map(&:to_i)
ans = Math.sqrt(((a[2]-a[0])**2)+((a[3]-a[1])**2))
print ans.to_i
print "\n"
end