# REVERSE WORDS
# CHALLENGE DESCRIPTION:

# Write a program to reverse the words of an input sentence.

# INPUT SAMPLE:

# The first argument will be a path to a filename containing multiple sentences, one per line. Possibly empty lines too. E.g.

# Hello World
# Hello CodeEval
# OUTPUT SAMPLE:

# Print to stdout, each line with its words reversed, one per line. Empty lines in the input should be ignored. Ensure that there are no trailing empty spaces on each line you print. E.g.

# World Hello
# CodeEval Hello
# Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.

File.open(ARGV[0]).each_line do |line|
    line = line.split(' ')
    line = line.reverse
    line.each_with_index do |b,i|
        if(i == line.size - 1) then
            print b
        else
            print b + " "
        end
    end
    print "\n"
end
