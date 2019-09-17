require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do 
      @pirate = params[:pirate]
      p @pirate
      @ship1 = @pirate[:ships][0]
      @ship2 = @pirate[:ships][1]
      erb :"pirates/show"
    end

  end
end
