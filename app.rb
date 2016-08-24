# app.rb
require 'sinatra'

class Movie
	attr_reader :title, :price
	def initialize(title, price)
		@title = title
		@price = price
	end
end

class Ticket
	attr_reader :name, :phone, :email, :id_movie
	def initialize (id_movie, name, phone, mail)
		@id_movie = id_movie
		@name = name
		@phone = phone
		@mail = mail
	end
end
class Cinema
	attr_accessor :ticket_list, :movie_list
	def initialize
		@movie_list = []
		@ticket_list = []
		m1 = Movie.new('Pets',4)
		m2 = Movie.new('Suicide Squad',7)
		m3 = Movie.new('Now You see me 2',4)
		m4 = Movie.new('Tarzan',4)
		@movie_list.push(m1)
		@movie_list.push(m2)
		@movie_list.push(m3)
		@movie_list.push(m4)
	end

	def create_new_ticket(id_movie, name, phone, mail)
		add_ticket_to_list(Ticket.new(id_movie, name, phone, mail))
	end

	def create_new_movie(title, price)
		add_movie_to_list(Movie.new(title, price))
	end

	def add_movie_to_list(movie)
		@movie_list[movie.id_movie] = movie
	end

	def add_ticket_to_list(ticket)
		@ticket_list[ticket.id_ticket] = ticket
	end

	def get_ticket_from_list(ticket_id)
		@ticket_list[ticket_id]
	end

	def get_movie_from_list(movie_id)
		@movie_list[movie_id]
	end
end



get "/" do
  "hello world"
end

get "/new" do  
	@cinema = Cinema.new
	erb :form
end

post '/create' do
	params[:name]
end



