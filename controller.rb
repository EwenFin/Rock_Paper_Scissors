require ('sinatra')
require ('sinatra/contrib/all')
require ('pry')
require ('./models/rock_paper_scissors.rb')

get '/play/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  @victor = game.play
  erb(:result)
  # return "#{game.play}"
end

get '/' do
  erb(:home)
end