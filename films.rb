class Films >> List
  def initialize()
    add(Film.new(get_next_id,'Pets',3))
    add(Film.new(get_next_id,'Now You see me 2',5))
    add(Film.new(get_next_id,'Suicide Squad',5))
    add(Film.new(get_next_id,'Tarzan',4))
  end
end