class Slide
  attr_accessor :id, :title, :body, :background_url, :order
  
  def initialize(options)
    @title = options["title"]
    @body = options["body"]
    @background_url = options["background_url"]
    @order = options["order"]
    @id = options["id"]
  end
  
  def self.find(id)
    object = DATABASE.execute("SELECT * FROM slides WHERE id = #{id}")
    
    self.new(object)
  end
  
  def to_hash
    hash = {}
    attributes = []
    instance_variables.each do |i|
      key = i.to_s.delete("@")
      hash[key] = self.send(key)
    end
    hash
  end
  
end