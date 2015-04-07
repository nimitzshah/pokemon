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
    multiplier = if pokemon.weakness == self.element then 2 else 1 end
    damage = get_damage(self.attack_power, multiplier)
    if damage > pokemon.hp then pokemon.hp =0 else pokemon.hp -= damage end
  end

  def get_damage(attack_power,multiplier)
    attack_power * multiplier
  end
end

# Each of the creatures below is a Pokemon
class Squirtle < Pokemon
  def initialize
    super
    self.element  = [Water.new]
  end
end

class Bulbasaur < Pokemon
  def initialize
    super
    self.element  = [Grass.new]
  end
end

class Charmander < Pokemon
  def initialize
    super
    self.element  = [Fire.new]
  end
end

class Zaptos < Pokemon
  def initialize
    super
    self.element = [Lightning.new]
  end
end

class Gyrados < Pokemon
  def initialize
    super
    self.element = [Water.new]
  end
end
