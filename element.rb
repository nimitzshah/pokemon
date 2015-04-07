class Element
  attr_accessor :name
  attr_accessor :weaknesses

  def initialize
    self.name = self.class.to_s
  end
end

class Grass < Element
  def initialize
    super
    self.weaknesses = ["Fire","Flying"]
  end
end

class Fire < Element
  def initialize
    super
    self.weaknesses = ["Water","Flying"]
  end
end

class Water < Element
  def initialize
    super
    self.weaknesses = ["Lightning","Grass"]
  end
end

class Lightning < Element
  def initialize
    super
    self.weaknesses = ["Rock","Fighting"]
  end
end

class Flying < Element
  def initialize
    super
    self.weaknesses = ["Lightning","Rock"]
  end
end
