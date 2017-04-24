require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do
  height = params.fetch('height')
  length = params.fetch('length')
  width = params.fetch('width')
  weight = params.fetch('weight')
  speed = params.fetch('speed')
  distance = params.fetch('distance')
  @output = (Parcel.new(length, width, height, weight).cost_to_ship(speed, distance))
  erb(:output)
end
