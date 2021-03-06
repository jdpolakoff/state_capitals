# an array of state hashes
states =[
{
    name: "Alabama",
    capital: "Montgomery"
}, {
    name: "Alaska",
    capital: "Juneau"
}, {
    name: "Arizona",
    capital: "Phoenix"
}, {
    name: "Arkansas",
    capital: "Little Rock"
}, {
    name: "California",
    capital: "Sacramento"
}, {
    name: "Colorado",
    capital: "Denver"
}, {
    name: "Connecticut",
    capital: "Hartford"
}, {
    name: "Delaware",
    capital: "Dover"
}, {
    name: "Florida",
    capital: "Tallahassee"
}, {
    name: "Georgia",
    capital: "Atlanta"
}, {
    name: "Hawaii",
    capital: "Honolulu"
}, {
    name: "Idaho",
    capital: "Boise"
}, {
    name: "Illinois",
    capital: "Springfield"
}, {
    name: "Indiana",
    capital: "Indianapolis"
}, {
    name: "Iowa",
    capital: "Des Moines"
}, {
    name: "Kansas",
    capital: "Topeka"
}, {
    name: "Kentucky",
    capital: "Frankfort"
}, {
    name: "Louisiana",
    capital: "Baton Rouge"
}, {
    name: "Maine",
    capital: "Augusta"
}, {
    name: "Maryland",
    capital: "Annapolis"
}, {
    name: "Massachusetts",
    capital: "Boston"
}, {
    name: "Michigan",
    capital: "Lansing"
}, {
    name: "Minnesota",
    capital: "St. Paul"
}, {
    name: "Mississippi",
    capital: "Jackson"
}, {
    name: "Missouri",
    capital: "Jefferson City"
}, {
    name: "Montana",
    capital: "Helena"
}, {
    name: "Nebraska",
    capital: "Lincoln"
}, {
    name: "Nevada",
    capital: "Carson City"
}, {
    name: "New Hampshire",
    capital: "Concord"
}, {
    name: "New Jersey",
    capital: "Trenton"
}, {
    name: "New Mexico",
    capital: "Santa Fe"
}, {
    name: "New York",
    capital: "Albany"
}, {
    name: "North Carolina",
    capital: "Raleigh"
}, {
    name: "North Dakota",
    capital: "Bismarck"
}, {
    name: "Ohio",
    capital: "Columbus"
}, {
    name: "Oklahoma",
    capital: "Oklahoma City"
}, {
    name: "Oregon",
    capital: "Salem"
}, {
    name: "Pennsylvania",
    capital: "Harrisburg"
}, {
    name: "Rhode Island",
    capital: "Providence"
}, {
    name: "South Carolina",
    capital: "Columbia"
}, {
    name: "South Dakota",
    capital: "Pierre"
}, {
    name: "Tennessee",
    capital: "Nashville"
}, {
    name: "Texas",
    capital: "Austin"
}, {
    name: "Utah",
    capital: "Salt Lake City"
}, {
    name: "Vermont",
    capital: "Montpelier"
}, {
    name: "Virginia",
    capital: "Richmond"
},{
    name: "Washington",
    capital: "Olympia"
},
{
    name: "West Virginia",
    capital: "Charleston"
}, {
    name: "Wisconsin",
    capital: "Madison"
}, {
    name: "Wyoming",
    capital: "Cheyenne"
}]

states.shuffle!
rightGuesses = 0
wrongGuesses = 0
turns = 0
game = "y"

print "Hi. Please enter your name to play "
theirName = gets.chomp

while game == "y"
states.each do |state|
  state[:right] = 0
  state[:wrong] = 0
  print "Please identify the capital of #{state[:name]}. Type 'hint' for a hint. "
  input = gets.chomp.upcase
  turns += 1
  if input == state[:capital].upcase
    rightGuesses += 1
    print "You have #{rightGuesses} right out of #{turns} attempt(s) \n"
    state[:right] += 1
  elsif input == "HINT"
    puts state[:capital][0,3]
    print "Do you have a guess? "
    input = gets.chomp.upcase
    if input == state[:capital].upcase
      rightGuesses += 1
      print "You have #{rightGuesses} right out of #{turns} attempt(s) \n"
      state[:right] += 1
    else
      wrongGuesses += 1
      print "You have #{wrongGuesses} wrong out of #{turns} attempt(s) \n"
      state[:wrong] += 1
    end
  else
    wrongGuesses += 1
    print "You have #{wrongGuesses} wrong out of #{turns} attempt(s) \n"
    state[:wrong] += 1
end
end
    print "You got #{rightGuesses} right out of #{turns} turns. Play again? (y/n) "
    game = gets.chomp
end
