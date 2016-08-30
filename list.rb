class List

  attr_accessor :list

  def initialize(type)
    @list = []
    type === 1 ? initialize_films : true
  end

  def initialize_films
    add(Film.new(get_next_id,'Pets',3))
    add(Film.new(get_next_id,'Now You see me 2',5))
    add(Film.new(get_next_id,'Suicide Squad',5))
    add(Film.new(get_next_id,'Tarzan',4))
  end

  def add(object)
    @list.push(object)
  end

  def get_next_id
    @list.size
  end


end