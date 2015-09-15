class Cat
  attr_reader :name, :owner
  @@cats = [
    { id: 1, name: "Curie", owner: "Bill" },
    { id: 2, name: "Markov", owner: "John" }
  ]

  def self.all
    @@cats ||= []
  end

  def initialize(params = {})
    @name, @owner = params["name"], params["owner"]
  end

  def save
    return false unless @name.present? && @owner.present?

    Cat.all << self
    true
  end

  def inspect
    { name: name, owner: owner }.inspect
  end
end
