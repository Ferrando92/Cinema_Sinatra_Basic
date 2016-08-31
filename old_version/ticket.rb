class Ticket
  attr_reader :ticket_id, :name, :phone, :mail, :movie_id
  def initialize (movie_id, name, mail, phone)
    @ticket_list != nil ? @ticket_id = @ticket_list.size : @ticket_id = 0
    @movie_id = movie_id
    @name = name
    @phone = phone
    @mail = mail
  end
end