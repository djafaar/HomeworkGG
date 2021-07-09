class Players
    attr_reader :char_name, :char_hitpoint, :char_attack
    def initialize(name, hitpoint, attack)
        @char_name = name
        @char_hitpoint = hitpoint
        @char_attack = attack
    end
    
    def to_s
        puts "#{@char_name} has #{@char_hitpoint} hitpoint and #{@char_attack} attack damage"
    end
    
    def attack(enemy)
        enemy.take_damage(@char_attack)
        puts "#{@char_name} attacks #{enemy.char_name} with #{@char_attack} damage"
        puts "#{enemy.char_name} has #{enemy.char_hitpoint} hitpoints and #{@char_attack} attack damage"
    end

    def take_damage(damage)
        @char_hitpoint -= damage
    end

    def die?
        if @char_hitpoint <= 0
            puts "#{@char_name} dies"
            true
        end
    end
end