# Homepage (Root path)
get '/' do
	@findings = Evergreen.where(name: 'western redcedar').first
  erb :index
end
