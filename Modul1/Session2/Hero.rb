require_relative 'Players'

class Hero < Players
    def initialize(name, hitpoint, attack)
        super(name, hitpoint, attack)
        @dodge_percentage = 0.8
        @healpoint = 20
    end

    def attack(enemy)
        enemy.take_damage(@char_attack)
        puts "#{@char_name} attacks #{enemy.char_name} with #{@char_attack} damage"
    end

    def heal(ally)
        ally.heal_ally(@healpoint)
        puts "#{@char_name} heals #{ally.char_name}, restoring #{@healpoint} hitpoints"   
    end

    def take_damage(damage)
        if rand < @dodge_percentage
            puts "#{@char_name} deflects the attack."
        else
            super(damage)
        end
    end
end