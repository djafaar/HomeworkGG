require_relative 'players'

jin = Players.new("jin sakai", 100, 50)
khotun = Players.new("Khotun khan", 500, 50)

puts jin
puts ""
puts khotun
puts ""
loop do
    jin.attack(khotun)
    puts ""
    khotun.attacks(jin)
    puts ""
    break if jin.die?
end