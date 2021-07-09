require_relative 'Players'
require_relative 'Hero'
require_relative 'Ally'
require_relative 'Villain'

jin = Hero.new("jin sakai", 100, 50)
yuna = Yuna.new("Yuna", 90, 45)
sensei_Ishikawa = Ishikawa.new("Sensei Ishikawa", 80, 60)
puts "\n"
mongolArcher = Archer.new("Mongol Archer", 80, 40)
mongolSpearman = Spearman.new("Mongol Spearman", 120, 60)
mongolSwordsman = Swordsman.new("Mongol Swordsman", 100, 50)
heroes = [jin, yuna, sensei_Ishikawa]
villains = [mongolArcher, mongolSpearman, mongolSwordsman]
turn = 1

until (jin.die? or villains.empty?) do
    puts "================ Turn #{turn} ================"
    puts "\n"
    puts jin.to_s
    puts yuna.to_s
    puts sensei_Ishikawa.to_s
    puts "\n"

    villains.each do |villain|
        puts villain.to_s
    end
    puts "\n"
    
    
    puts "As jin sakai, What do you wanna do this turn?
    \n1) Attack an enemy\n2)Heal an ally"
    answer = gets.chomp().to_i
    puts "\n"
    if answer == 1
        puts "which enemy you pick?\n1)Archer\n2)Spearman\n3)Swordsman"
        attacks = gets.chomp().to_i
        puts "\n"
        jin.attack(mongolArcher) if attacks == 1
        jin.attack(mongolSpearman) if attacks == 2
        jin.attack(mongolSwordsman) if attacks == 3
        villains.each do |villain|
            villains.delete(villain) if villain.die? or villain.flee?
        end
    else 
        puts "which ally you heal?\n1)Yuna\n2)Sensei Ishikawa"
        heal = gets.chomp.to_i
        puts "\n"
        jin.heal(yuna) if heal == 1
        jin.heal(sensei_Ishikawa) if heal == 2
    end

    if !yuna.die? and !villains.empty?
        yuna.attack(villains[rand(villains.size)])
        villains.each do |villain|
            villains.delete(villain) if villain.die? or villain.flee?
        end
    end

    if !sensei_Ishikawa.die? and !villains.empty?
        sensei_Ishikawa.attack(villains[rand(villains.size)])
        villains.each do |villain|
            villains.delete(villain) if villain.die? or villain.flee?
        end
    end

    villains.each do |villain|
        if villain.die?
            villain.attack(heroes[rand(heroes.size)])
        end
    end
    puts "\n"
    puts "Jin Win" if villains.empty?
    turn += 1
end





