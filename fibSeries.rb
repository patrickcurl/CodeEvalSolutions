# FIBONACCI SERIES
# CHALLENGE DESCRIPTION:

# The Fibonacci series is defined as: F(0) = 0; F(1) = 1; F(n) = F(n-1) + F(n-2) when n>1. Given a positive integer 'n', print out the F(n).

# INPUT SAMPLE:

# The first argument will be a path to a filename containing a positive integer, one per line. E.g.

# 5
# 12
# OUTPUT SAMPLE:

# Print to stdout, the fibonacci number, F(n). E.g.

# 5
# 144
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

def fib(n)
    gRatio = 1.61803398875
    num = n.to_f
    if num == 0
        return 0
    elsif num == 1
        return 1
    else
        myNum = (((gRatio) ** num) - ((1 - gRatio) ** num)) / Math.sqrt(5)
        return myNum.to_i
    end
end

File.open(ARGV[0]).each_line do |line|
 puts fib(line)
end