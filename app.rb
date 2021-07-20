require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
require('pry')
also_reload('lib/**/*.rb')

get '/' do
  name = params[:parcel_name]
  width = params[:parcel_width]
  length = params[:parcel_length]
  height = params[:parcel_height]
  weight = params[:parcel_weight]
  parcel = Parcel.new('name', 'width', 'length', 'height', 'weight', 0)
  # parcel.save()
  @parcels = Parcel.all()
  erb(:parcels)
end

get('/parcels/new') do
  erb(:new_parcel)
end

get('/parcels/:id') do
  @parcel = Parcel.find(params[:id].to_i())
  erb(:parcel)
end

get('/parcels/:id/edit') do
  @parcel = Parcel.find(params[:id].to_i())
  erb(:edit_parcel)
end

post('/parcels') do
  name = params[:parcel_name]
  width = params[:parcel_width]
  length = params[:parcel_length]
  height = params[:parcel_height]
  weight = params[:parcel_weight]
  id = params[:parcel_id]
  parcel = Parcel.new(name, width, length, height, weight, id)
  parcel.save
  @parcels = Parcel.all
  erb(:parcels)
end

patch('/parcels/:id') do
  @parcel = Parcel.find(params[:id].to_i())
  @parcel.update(params[:name])
  @parcels = Parcel.all
  erb(:parcels)
end

delete('/parcels/:id') do
  @parcel = Parcel.find(params[:id].to_i())
  @parcel.delete()
  @parcels = Parcel.all
  erb(:parcels)
end