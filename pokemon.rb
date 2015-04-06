# A placeholder for some exciting Pokemon code!
# Use weakness because a Pokemons weakness stacks. # For example.
# Gyrados is "flying" and water so if attacked by lightning it will
# get 4 times the damage.

class Pokemon
  attr_accessor :hp
  attr_accessor :type
  attr_accessor :attack_power
  attr_accessor :weakness

  def initialize
    self.hp = 100
    self.attack_power = 10
  end
  def attack(pokemon)
    multiplier = if pokemon.weakness == self.type then 2 else 1 end
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
    self.type     = "water"
    self.weakness = "grass"
  end
end

class Bulbasaur < Pokemon
  def initialize
    super
    self.type     = "grass"
    self.weakness = "fire"
  end
end

class Charmander < Pokemon
  def initialize
    super
    self.type     = "fire"
    self.weakness = "water"
  end
end

class Zaptos < Pokemon
end

class Gyrados < Pokemon
  def initialize
    super
    # self.type = {"water":{weakness:{}}}
  end
end
