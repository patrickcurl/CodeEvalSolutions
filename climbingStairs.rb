# CLIMBING STAIRS
# CHALLENGE DESCRIPTION:

# You are climbing a stair case. It takes n steps to reach to the top. Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

# INPUT SAMPLE:

# Your program should accept as its first argument a path to a filename. Each line in this file contains a positive integer which is the total number of stairs.
# Ignore all empty lines. E.g.

# 10
# 20
# OUTPUT SAMPLE:

# Print out the number of ways to climb to the top of the staircase. E.g.

# 89
# 10946
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
def fib(n)
    gRatio = 1.61803398875

    if n == 0
        return 0
    elsif n == 1
        return 1
    else
        num = (((gRatio)**n) - ((1 - gRatio) ** n)) / Math.sqrt(5)
        return num.to_i
    end
end
File.open(ARGV[0]).each_line do |line|
    puts fib(line.to_i + 1)
end