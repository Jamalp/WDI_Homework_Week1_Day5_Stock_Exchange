animals = [] #array
mammals = {} #hash
mammals[:cats] = [] #array inside a hash
reptiles = {} #hash
reptiles[:snake] = [] #array inside a hash

animals << mammals << reptiles
# animals.push(mammals)
# animals.push(reptiles)
# 8 & 9 do what line 7 does.

phils_cat = {
name: 'tiny',
color: 'orange',
age: 3,
fav_toys: ['strings', 'plants', 'balls']
}

#OG Notation, option but does the same as above.
beryls_snake = {
:name => 'snappy',
:color => 'brown',
:age => '12',
:fav_toys => ['mice', 'hamsters', 'branches']
}

# OG notation, all on one line.
alinas_cat = { :name => 'pushok', :color => 'brown', :age => 4 }
