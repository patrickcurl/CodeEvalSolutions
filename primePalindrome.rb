# PRIME PALINDROME
# CHALLENGE DESCRIPTION:

# Write a program to determine the biggest prime palindrome under 1000.

# INPUT SAMPLE:

# There is no input for this program.

# OUTPUT SAMPLE:

# Your program should print the largest palindrome on stdout, i.e.

# 929
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

def palTest(num)
    a = num.to_s.split(//)
    if a.first == a.last
      return true
    end
end

def primeCheck(num)
  a = Math.sqrt(num.to_f).ceil
  (2..a).each do |f|
      if num % f == 0 && f < num
        return false
      end
  end
  return true
end
# (2..primeCheck(929)).each do |f| puts f end
#print Math.sqrt(100)
r = 1000..1
(r.first).downto(r.last).each do |i|
    if (palTest(i))
      if(primeCheck(i))
          puts i
          break
      end
    end

end