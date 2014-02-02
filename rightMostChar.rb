# RIGHTMOST CHAR
# CHALLENGE DESCRIPTION:

# You are given a string 'S' and a character 't'. Print out the position of the rightmost occurrence of 't' (case matters) in 'S' or -1 if there is none. The position to be printed out is zero based.

# INPUT SAMPLE:

# The first argument will ba a path to a filename, containing a string and a character, comma delimited, one per line. Ignore all empty lines in the input file. E.g.
# Hello World,r
# Hello CodeEval,E
# OUTPUT SAMPLE:

# Print out the zero based position of the character 't' in string 'S', one per line. Do NOT print out empty lines between your output.
# E.g.

# 8
# 10
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
File.open(ARGV[0]).each_line do |line|
    a = line.split(',')
    a[0] = a[0].split(//)
    a[1] = a[1].chomp("\n")
    #a[0] = a[0].split(//)
    o = 0
    a[0].each_with_index do |f,i|
        if (f == a[1])
         o = i
        end
    end
    if (o>0) then
        print o
    else
        print -1
    end
    print "\n"
end
