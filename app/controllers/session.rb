enable :sessions

post '/login' do
  if_success = User.authenticate(params[:username],params[:pwd])
  if if_success == true
    user = User.find_by_username(params[:username])
    session[:user] = user.id
    redirect to('/')

  elsif if_success == false
    session[:user] = 0
    redirect to('/')
  end

end

get '/logout' do
  session['pss'] = "false"

  redirect to('/')
end