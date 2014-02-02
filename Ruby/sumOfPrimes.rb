# SUM OF PRIMES
# CHALLENGE DESCRIPTION:

# Write a program to determine the sum of the first 1000 prime numbers.

# INPUT SAMPLE:

# There is no input for this program.

# OUTPUT SAMPLE:

# Your program should print the sum on stdout, i.e.

# 3682913
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

def primeCheck(num)
  a = Math.sqrt(num.to_f).ceil
  (2..a).each do |f|
      if num % f == 0 && f < num
        return false
      end
  end
  return true
end

primes = 0
num = 1
total = 0
while (primes <= 1000) do
    if (primeCheck(num))
        total = total + num
        primes = primes + 1
    end
    num = num + 1
end

puts total-1