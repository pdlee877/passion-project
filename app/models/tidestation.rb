class TideStation
	include HTTParty	

	def self.create_tide(tide_station)
		mykey = ENV['TIDES_KEY']
		date = Time.now.strftime("%Y%m%d")
		url = "http://tidespy.com/api/tideturns?pn=#{tide_station}&unit=m&start=#{date}&days=2&key=#{mykey}" 
		format :json
		response = HTTParty.get(url)
		data = JSON.parse(response.body)
	end
end