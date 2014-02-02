# WORD TO DIGIT
# CHALLENGE DESCRIPTION:

# Having a string representation of a set of numbers you need to print this numbers.

# All numbers are separated by semicolon. There are up to 20 numbers in one line. The numbers are "zero" to "nine"

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line in this file is one test case. E.g.

# zero;two;five;seven;eight;four
# three;seven;eight;nine;two
# OUTPUT SAMPLE:

# Print numbers in the following way:

# 025784
# 37892
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

File.open(ARGV[0]).each_line do |line|
    a = line.split(';').map { |b| b.gsub(/zero/, "0").gsub(/one/, "1").gsub(/two/, "2").gsub(/three/, "3").gsub(/four/, "4").gsub(/five/, "5").gsub(/six/, "6").gsub(/seven/, "7").gsub(/eight/, "8").gsub(/nine/, "9") }
    a.each do |f| print f end

end
