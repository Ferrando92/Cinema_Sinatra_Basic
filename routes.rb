get "/" do
  erb :home
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
  ticket_id = create_ticket_and_add_to_list(params[:name], params[:mail], params[:phone], params[:film_id])

  #aqui crearemos el ticket y redigiremos a show/id para evitar creaciones multiples
end

get '/show/:id' do
  @ticket = get_data_from_ticket_by_ticket_id(params[:id])
  erb :show_ticket
end