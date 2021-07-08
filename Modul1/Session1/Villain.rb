require_relative 'Soldiers'

class Archer < Soldiers
    def attack(enemy)
        enemy.take_damage
        puts "#{@char_name} shoots an arrow at #{enemy.char_name} with #{@char_attack} damage"
    end
end

class Spearman < Soldiers
    def attack(enemy)
        enemy.take_damage
        puts "#{@char_name} thrusts #{enemy.char_name} with #{@char_attack} damage"
    end
end

class Swordsman < Soldiers  
    def attack(enemy)
        enemy.take_damage
        puts "#{@char_name} slash #{enemy.char_name} with #{@char_attack} damage"
    end
end