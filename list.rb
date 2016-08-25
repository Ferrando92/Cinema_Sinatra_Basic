class List
  def initialize()
    @list = []
  end

  def add(object)
    @list.push(object)
  end

  def get_next_id
    @list.size
  end

  def get_list
    @list
  end
end