class Item
  @@id_count = 0

  attr_accessor :id, :name, :value

  def initialize(name, value)
    @@id_count += 1
    @id = @@id_count
    @name = name
    @value = value
  end
end