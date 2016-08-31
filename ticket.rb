class Ticket
	
  attr_accessor :ticket_id, :name, :phone, :mail, :film_id

  def initialize (ticket_id, film_id, name, mail, phone)
    @ticket_id = ticket_id
    @film_id = film_id
    @name = name
    @phone = phone
    @mail = mail
  end
end