class Film

  attr_reader :film_id, :title, :price

  def initialize(film_id, title, price)
    @film_id = film_id
    @title = title
    @price = price
  end
end