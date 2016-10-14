class Player

attr_reader :name
attr_accessor :hitpoints

DEFAULT_HITPOINTS = 60

def initialize(name, hitpoints = DEFAULT_HITPOINTS)
  @name = name
  @hitpoints = hitpoints
end

def receive_damage
  @hitpoints -= Kernel.rand(20)
end

end
