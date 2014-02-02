# MULTIPLICATION TABLES
# CHALLENGE DESCRIPTION:

# Print out the grade school multiplication table upto 12*12.

# INPUT SAMPLE:

# There is no input for this program.

# OUTPUT SAMPLE:

# Print out the table in a matrix like fashion, each number formatted to a width of 4 (The numbers are right-aligned and strip out leading/trailing spaces on each line). The first 3 line will look like:

# 1   2   3   4   5   6   7   8   9  10  11  12
# 2   4   6   8  10  12  14  16  18  20  22  24
# 3   6   9  12  15  18  21  24  27  30  33  36
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

count = 1
x = 1
while count <= 12
    x = 1
    12.times do | x |
        y = (x+1) * count
        print y.to_s.rjust(4)
    end
    print "\r\n"
    count = count+1
end
