enable :sessions


get '/create' do

  erb :create
end



post '/createaccount' do
  User.create(name: params[:username], password:params[:pwd])
  redirect to('/')
end












get '/secretpage' do
  if session['pss'] == "true"
    erb :secretpage
  elsif session['pss'] == "false"
    redirect to('/')
  end
end