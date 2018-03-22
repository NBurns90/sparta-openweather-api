require 'httparty'
require 'json'

class SingleWeatherService
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5'

  def single_weather_response(city_name, country_code)
    JSON.parse(self.class.get("/weather?q=#{city_name},#{country_code}&APPID=6d19d330287f94216604a8373dec633b").body)
  end

end
