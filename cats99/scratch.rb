require 'date'

n = Date.new(1996, 7, 7)
puts time_ago_in_words((Date.today) - n)


c = Cat.new(birth_date: Date.new(1995,04,15), name: 'Meowth', sex: 'M', description: 'Best member of Team Rocket', color: 'White')



d = Cat.new(birth_date: Date.new(1994, 04, 20), name: 'Persian', sex: 'M', description: 'Evolved meowth.', color: 'White')
