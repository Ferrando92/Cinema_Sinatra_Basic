# app.rb
require 'sinatra'
require './ticket'
require './movie'

class Cinema
	attr_accessor :ticket_list, :movie_list
	def initialize
		@movie_list = []
		@ticket_list = []
		m1 = Movie.new('Pets',4)
		@movie_list.push(m1)
		m2 = Movie.new('Suicide Squad',7)
		@movie_list.push(m2)
		m3 = Movie.new('Now You see me 2',4)
		@movie_list.push(m3)
		m4 = Movie.new('Tarzan',4)
		@movie_list.push(m4)
	end

	def create_new_movie(title, price)
		add_movie_to_list(Movie.new(title, price))
	end

	def add_movie_to_list(movie)
		@movie_list.push(movie)
	end

	def add_ticket_to_list(ticket)
		@ticket_list.push(ticket)
	end

	def get_ticket_from_list(ticket_id)
		@ticket_list[ticket_id]
	end

	def get_movie_from_list(movie_id)
		#@movie_list[movie_id]
	end

end

require './routes'







