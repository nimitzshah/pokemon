# A placeholder for some exciting Pokemon code!
# Use weakness because a Pokemons weakness stacks. # For example.
# Gyrados is "flying" and water so if attacked by lightning it will
# get 4 times the damage.
class Pokemon
  attr_accessor :hp
  attr_accessor :elements
  attr_accessor :attack_power

  def initialize
    self.hp = 100
    self.attack_power = 10
  end

  def attack(pokemon)
    stack = 0
    self.elements.each do |element|
      stack += pokemon.weaknesses.count{|weakness|
        weakness == element.name
      }
    end
    damage = get_damage(self.attack_power, 2**stack)
    if damage > pokemon.hp then pokemon.hp =0 else pokemon.hp -= damage end
  end

  def get_damage(attack_power,multiplier)
    attack_power * multiplier
  end

  def weaknesses
    weaknesses = []
    self.elements.map do |element|
      weaknesses += element.weaknesses
    end
    weaknesses
  end
end

# Each of the creatures below is a Pokemon
class Squirtle < Pokemon
  def initialize
    super
    self.elements  = [Water.new]
  end
end

class Bulbasaur < Pokemon
  def initialize
    super
    self.elements  = [Grass.new]
  end
end

class Charmander < Pokemon
  def initialize
    super
    self.elements  = [Fire.new]
  end
end

class Zaptos < Pokemon
  def initialize
    super
    self.elements = [Lightning.new]
  end
end

class Gyrados < Pokemon
  def initialize
    super
    self.elements = [Water.new, Flying.new]
  end
end
