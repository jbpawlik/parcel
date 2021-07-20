require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
require('pry')
also_reload('lib/**/*.rb')

get '/' do
  @parcels = Parcel.all
  erb(:parcel)
end

post '/parcels' do
  name = params[:parcel_name]
  width = params[:parcel_width]
  length = params[:parcel_length]
  height = params[:parcel_height]
  weight = params[:parcel_weight]
  parcel = Parcel.new
  erb(:parcels)
end

