#replaces first example of "editor" with "tool"
echo "My favorite programming editor is Emacs. Another editor I like is Vim." | sed -e s/editor/tool/

#replaces all instances of "editor" with "tool"
echo "My favorite programming editor is Emacs. Another editor I like is Vim." | sed -e s/editor/tool/g

#replaces the second occurrence of "editor" with "tool"
echo "My favorite programming editor is Emacs. Another editor I like is Vim." | sed -e s/editor/tool/2

#highlight all the occurrences of "editor" by wrapping them up in brace brackets
echo "My favorite programming editor is Emacs. Another editor I like is Vim." | sed -e s/editor/{\&}/g

#changes first 3 groups of 4 digits to an "*"
echo "1234 0987 4790 2095" | sed -r -e 's/[0-9]{4}/****/1' -e 's/[0-9]{4}/****/1' -e ' s/[0-9]{4}/****/1'

#reverses a 16 digit sequence of numbers in blocks of 4
echo "1234 0987 4790 2095" | sed -E 's/([[:digit:]]{4}) ([[:digit:]]{4}) ([[:digit:]]{4}) ([[:digit:]]{4})/\4 \3 \2 \1/'
