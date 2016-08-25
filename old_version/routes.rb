require './app'
cinema = Cinema.new

get "/" do
  "hello world"
end

get "/new" do
  @cinema_v = cinema
  erb :form
end

post '/create' do
  ticket = Ticket.new(params[:movie_id].to_i, params[:name],  params[:mail], params[:phone])
  cinema.add_ticket_to_list(ticket)
  @ticket = cinema.get_ticket_from_list(ticket.ticket_id)
  @movie_list = cinema.movie_list
  erb :ticket_data
end
