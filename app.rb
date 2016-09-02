require 'sinatra'
require './ticket'
require './film'
require './list'
require './routes'
require 'haml'
require 'rubygems'
require 'bundler/setup'
require 'pony'

configure do
  enable :sessions
end

before do
  if(!session[:films]) then session[:films] = List.new(1) end# type 1 = films
  if(!session[:tickets]) then session[:tickets] = List.new(2) end# type 2 = tickets
  #Descomentar si se aplica herencia en Films
  #if(!session[:films]) then session[:films] = Films.new end
end

def add_film_to_list(title, price) #Aun no se usa, destinado a admin
  film_id = session[:films].get_next_id
  films.add(Film.new(film_id, title, price))
end

def add_ticket_to_list(ticket)
  session[:tickets].add(ticket)
end

def generate_ticket_and_get_ticket_id(name, mail, phone, film_id)
  ticket_id = session[:tickets].get_next_id 
  ticket = Ticket.new(ticket_id, film_id, name, mail, phone)
  add_ticket_to_list(ticket)
  send_mail(ticket)
  ticket_id
end

def get_data_from_ticket_by_ticket_id(id)
  session[:tickets].list[id]
end

def send_mail(ticket)
  body = generate_mail_body(ticket)
  Pony.mail({
    :to => "#{ticket.mail}",
    :from => 'Cinemas@palacaravasa.com',
    :subject => "Ticket ##{ticket.ticket_id}", 
    :body => "#{body}", 
    :via => :smtp,
    :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'serferlomail4test@gmail.com',
    :password             => 'password4testers',
    :authentication       => :plain, 
    :domain               => "localhost.localdomain" 
  }})
end

def generate_mail_body(ticket)
	message = "Ticket: \t ##{ticket.ticket_id} \n
	Name:\t #{ticket.name}\n
	Mail:\t #{ticket.mail}\n
	Phone:\t #{ticket.phone}\n
	Film:\t #{session[:films].list[ticket.film_id.to_i].title}\n
  Price:\t #{session[:films].list[ticket.film_id.to_i].price}€\n
	Enjoy ! ^^"  	
end