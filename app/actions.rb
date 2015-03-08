# Homepage (Root path)
helpers do 
	def current_user
		current_user ||= User.find_by_username(session[:user])
	end
end


get '/' do
  erb :index
end

get '/profile' do 
	@events = Event.all
	@current = current_user.events
	erb :'profile'
end

get '/leafy' do 
	@leafy = Leafy.all
	erb :"leafy/leafy"
end

post '/leafy' do

	@result = Leafy.where(pattern: params[:pattern]) # or fruit: params[:fruit] or shape: params[:shape] or region: params[:region] or elevation: params[:elevation])
	
	erb :"leafy/result"
end

get '/evergreen' do
	@evergreen = Evergreen.all
	erb :'evergreen/evergreen'
end

post '/evergreen' do 
	puts params
	shape 		= 	params[:shape]
	bundle 		= 	params[:bundle]
	conesize 	= 	params[:conesize]
	coneshape 	= params[:coneshape]
	dimensions 	= params[:dimensions]
	elevation 	= params[:elevation]
	region 		= params[:region]
	stalk 		= params[:stalk]

	@result = Evergreen.where('shape=? OR bundle=? OR conesize=? OR coneshape=? OR dimensions=? OR elevation=? OR region=? OR stalk=?', shape, bundle, conesize, coneshape, dimensions, elevation, region, stalk) 
 
	erb :'evergreen/result'
end

