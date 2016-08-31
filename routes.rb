get "/" do
  erb :home
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
  ticket_id = session[:tickets].get_next_id
  redirect "/show/#{ticket_id}"
  #aqui crearemos el ticket y redigiremos a show/id para evitar creaciones multiples
end

get '/show/:id' do
  @ticket = get_data_from_ticket_by_ticket_id(params[:id].to_i)
  erb :show_ticket
end

get '/show' do
   @tickets = session[:tickets].list
  erb :show_all_tickets
end
