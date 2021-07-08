require_relative 'Players'

class Players2 < Players
    #khotun attack could get dodge by jin 
    def attack(enemy)
        if rand < 0.8
            enemy.attackmiss
            puts "#{@char_name} attacks #{enemy.char_name} with #{@char_attack} damage"
            puts "#{enemy.char_name} deflect the attacks"
            puts "#{enemy.char_name} has #{enemy.char_hitpoint} hitpoints and #{@char_attack} attack damage"
        else
            super(enemy)
        end    
    end
    
    def attackmiss
        @char_hitpoint = @char_hitpoint
    end
end