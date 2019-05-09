class SessionsController < ApplicationController

  get '/' do
    redirect '/login'
  end

  get '/login' do
    erb :"sessions/login.html"
  end

  post '/sessions' do
    login(params[:email], params[:password])
    redirect '/posts'
  end

  get '/logout' do
    logout!
    redirect '/posts'
  end

end
