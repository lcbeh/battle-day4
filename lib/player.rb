class Player

attr_reader :name
attr_accessor :hitpoints

DEFAULT_HITPOINTS = 60

def initialize(name, hitpoints = DEFAULT_HITPOINTS)
  @name = name
  @hitpoints = hitpoints
end

def attack(opponent)
  opponent.receive_damage
end

def receive_damage
  @hitpoints -= 10
end

end
