class Node
  attr_accessor :value, :next_node
  
  def initialize(options)
    @value = options["value"]
    @next_node = options["next_node"]
  end
  
end