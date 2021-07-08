class Soldiers < players
    def initialize(name, hitpoint, attack)
        super
        @fleefrombattle_percentage = 0.5
    end
    def take_damage(damage)
    @char_hitpoint -= damage
    return flee? if rand < @fleefrombattle_percentage and @char_hitpoint < 50
    end

    def flee?
        puts "#{@char_name} has fled the battlefield with #{@char_hitpoint} left"
    end
end