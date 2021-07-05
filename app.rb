require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do 
      erb :'root'
    end
    
    get '/new' do 
      erb :'pirates/new'
    end
    

    post '/pirates' do 
      pirate = params[:pirate]
      ship1 = pirate[:ships][0]
      ship2 = pirate[:ships][1]
      @pirate = Pirate.new(pirate)
      @ship1 = Ship.new(ship1)
      @ship2 = Ship.new(ship2)
      erb :'pirates/show'

    end
  end
end
