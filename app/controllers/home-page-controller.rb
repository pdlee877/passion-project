require_relative '../models/tidestation'

get '/' do
	erb :index
end

post '/' do
	@tide = TideStation.create_tide(params[:texaswater])
	ap @tide
	erb :index
end