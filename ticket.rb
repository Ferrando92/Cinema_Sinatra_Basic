class Ticket
  attr_reader :ticket_id, :name, :phone, :mail, :movie_id
  def initialize (ticket_id, movie_id, name, mail, phone)
    @ticket_id = ticket_id
    @movie_id = movie_id
    @name = name
    @phone = phone
    @mail = mail
  end
end