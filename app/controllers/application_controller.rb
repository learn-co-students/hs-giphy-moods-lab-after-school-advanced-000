require './config/environment'
require './app/models/giph.rb'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
      enable :sessions
    set :session_secret, 'fwitter'
  end

  get '/' do
    erb :index
  end

end
