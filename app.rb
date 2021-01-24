require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do #shows home page with link to new puppy form
    erb :index
  end

  get '/new' do #presents user with form for new puppy
    erb :create_puppy
  end

  post '/puppy' do #shows user the new puppy
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    
    erb :display_puppy
  end



end
