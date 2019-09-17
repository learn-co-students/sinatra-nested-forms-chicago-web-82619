require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :index
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @p_name = params[:pirate][:name]
      @p_height = params[:pirate][:height]
      @p_weight = params[:pirate][:weight]
      @s1 = params[:pirate][:ships][0]
      @s2 = params[:pirate][:ships][1]
      erb :"pirates/show"
    end
  end
end
