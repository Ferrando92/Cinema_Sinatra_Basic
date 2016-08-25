require 'sinatra'
require './ticket'
require './film'
require './list'
require './routes'

tickets = List.new
films = List.new

def add_film_to_list(title, price)
	@films = films
	film_id = @films.get_next_id
	@films.add(Film.new(film_id, title, price))
end

def create_ticket_and_add_to_list(name, mail, phone, film_id)
	@tickets = tickets
	ticket_id = @tickets.get_next_id
	@tickets.add(Ticket.new(ticket_id, name, mail, phone, film_id))
	ticket_id
end

def get_data_from_ticket_by_ticket_id(id)
end

add_film_to_list('Pets',3)
add_film_to_list('Suicide Squad',5)
add_film_to_list('Now You see me 2',5)
add_film_to_list('Tarzan',4)




