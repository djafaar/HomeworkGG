require_relative 'Players'
require_relative 'Players2'
require_relative 'Soldiers'

jin = Players.new("jin sakai", 100, 50)
khotun = Players2.new("Khotun khan", 500, 50)
mongolArcher = Archer.new("Mongol Archer", 80, 40)
mongolSpearman = Spearman.new("Mongol Spearman", 120, 60)
mongolSwordsman = Swordsman.new("Mongol Swordsman", 100, 50)

puts jin
puts ""
puts khotun
puts ""
loop do
    # jin.attack(khotun)
    jin.attack(khotun)
    puts ""
    khotun.attack(jin)
    puts ""
    break if jin.die? or khotun.die?
end