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
    
    #jin attack khotun 
    def attack(enemy)
        enemy.take_damage(@char_attack)
        puts "#{@char_name} attacks #{enemy.char_name} with #{@char_attack} damage"
        puts "#{enemy.char_name} has #{enemy.char_hitpoint} hitpoints and #{@char_attack} attack damage"
    end

    #khotun attack could get dodge by jin 
    def attacks(enemy)
        if rand < 0.8
            enemy.no_damage
            puts "#{@char_name} attacks #{enemy.char_name} with #{@char_attack} damage"
            puts "#{enemy.char_name} deflect the attacks"
            puts "#{enemy.char_name} has #{enemy.char_hitpoint} hitpoints and #{@char_attack} attack damage"
        else
            enemy.take_damage(@char_attack)
            puts "#{@char_name} attacks #{enemy.char_name} with #{@char_attack} damage"
            puts "#{enemy.char_name} has #{enemy.char_hitpoint} hitpoints and #{@char_attack} attack damage"
        end
    end

    def no_damage
        @char_hitpoint = @char_hitpoint
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