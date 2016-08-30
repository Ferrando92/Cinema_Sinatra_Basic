require 'sinatra'
require './ticket'
require './film'
require './list'
require './routes'


configure do
  enable :sessions
end

before do
  session[:films] = List.new(1)# type 1 = films
  session[:tickets] = List.new(2)# type 2 = tickets
end

def add_film_to_list(title, price)
	#@films = films
	film_id = session[:films].get_next_id
	films.add(Film.new(film_id, title, price))
end

def create_ticket_and_add_to_list(name, mail, phone, film_id)
	#@tickets = tickets
	ticket_id = session[:tickets].get_next_id
	session[:tickets].add(Ticket.new(ticket_id, name, mail, phone, film_id))
	ticket_id
end

def get_data_from_ticket_by_ticket_id(id)
  session[:tickets].list[id.to_i]
end






