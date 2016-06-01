# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#########
"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
"OoNaMaNaPiA".swapcase
# => "oOnAmAnApIa"

#########
"zom".insert(1, 'o')
# => “zoom”
"waterellon".insert(5, 'm')

#########
"enhance".center(15)
# => "    enhance    "
"mississippi".center(20)
# => "    mississippi     "

#########
"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
"Don't stop believin'".upcase
# => "DON'T STOP BELIEVIN'"

#########
"the usual".concat(" suspects")
#=> "the usual suspects"
"I believe".concat(" I can fly")
#=> "I believe I can fly"

#########
" suspects".prepend("the usual")
# => "the usual suspects"
"world".prepend("hello ")
# => "hello world"

#########
"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
"Desserts".chop
# => "Dessert"

#########
"The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"
"Hello"[1..-1]
# => "ello"

#########
"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"
"We    don't  want      repeating     spaces".squeeze(" ")
# => "We don't want repeating spaces"

#########
"z".ord
# => 122
"o".ord
# => 111

#########
"How many times does the letter 'a' appear in this string?".count('a')
# => 4
"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer".count('e')
# => 7