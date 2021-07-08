require_relative 'Players'

class Soldiers < Players
    def initialize(name, hitpoint, attack)
        super(name, hitpoint, attack)
        @fleefrombattle_percentage = 0.5
        @fled = false
    end

    def take_damage(damage)
    @char_hitpoint -= damage
    return flee if rand < @fleefrombattle_percentage and @char_hitpoint < 50
    end

    def flee
        @fled = true
        puts "#{@char_name} has fled the battlefield with #{@char_hitpoint} left"
    end

    def flee?
        @fled
    end
end