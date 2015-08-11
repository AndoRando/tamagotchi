require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/pet') do
  @name = params.fetch('Name')
  @food_level = params.fetch('Food level').to_i()
  @energy_level = params.fetch('Energy level').to_i()
  @fitness_level = params.fetch('Fitness Level').to_i()
  @pet = Tamagotchi.new(@name, @food_level, @energy_level, @fitness_level)
  erb(:pet)
end
