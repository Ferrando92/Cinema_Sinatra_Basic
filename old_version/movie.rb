class Movie
  attr_reader :movie_id, :title, :price
  def initialize(title, price)
    @movie_list != nil ? @movie_id = @movie_list.size : @movie_id = 0
    @title = title
    @price = price
  end
end