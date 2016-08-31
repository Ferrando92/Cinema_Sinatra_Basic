get "/" do
  haml :home
end

get "/test" do
  haml :home
end

get "/delete_session" do
  session.clear
  redirect "/new"
end

get "/new" do
  @films = session[:films]
  erb :form
end

post '/create' do
  create_ticket_and_add_to_list(params[:name], params[:mail], params[:phone], params[:film_id])
  ticket_id = session[:tickets].get_next_id-1
  redirect "/show/#{ticket_id}"
  #aqui crearemos el ticket y redigiremos a show/id para evitar creaciones multiples
end

get '/show/:id' do
  @ticket = get_data_from_ticket_by_ticket_id(params[:id].to_i)
  @film = session[:films].list[@ticket.film_id.to_i]
  haml :show_ticket
end

get '/show' do
  @films = session[:films].list
  @tickets = session[:tickets].list
  haml :show_all_tickets
end
