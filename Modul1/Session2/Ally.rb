require_relative 'Players'

class Yuna < Players
    def initialize(name, hitpoint, attack)
        super
    end

    def heal_ally(hitpoint)
        @char_hitpoint += hitpoint
    end
end

class Ishikawa < Players
    def initialize(name, hitpoint, attack)
        super
    end

    def heal_ally(hitpoint)
        @char_hitpoint += hitpoint
    end
end