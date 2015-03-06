class LinkedList
  
  def initialize(options)
    @head = Node.new(options[0].id, nil)
    for x in 1..options.length
      self.add_node(options[x].id) unless options[x].nil?
    end
  end
  
  def add_node(value)
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current.next_node = Node.new(value, nil)
  end
  
end