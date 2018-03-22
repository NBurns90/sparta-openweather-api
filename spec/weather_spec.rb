require 'spec_helper'

describe WeatherService do

  context 'requesting data on the weather for a single city' do

    before(:all) do
      @weathermap = WeatherService.new
      @weather = @weathermap.single_weather_service.single_weather_response('hamberg', 'ger')
      puts @weather
    end

    it "should respond with a status message of 200" do
      expect(@weather['cod']).to eq(200)
    end

    it "should have a weather array" do
      expect(@weather['weather']).to be_instance_of(Array)
    end

    it "should return a temp as a float"  do
      expect(@weather['main']['temp']).to be_instance_of(Float)
    end

    it "should return a temp_min as a float"  do
      expect(@weather['main']['temp_min']).to be_instance_of(Float)
    end

    it "should return a temp_max as a float"  do
      expect(@weather['main']['temp_max']).to be_instance_of(Float)
    end

    it "should return a name as a string"  do
      expect(@weather['name']).to be_instance_of(String)
    end

    it "the weather array should contain 4 items"  do
      expect(@weather['weather'].first.keys.length).to eq(4)
    end

    it "the id should contain 7 digits"  do
      expect(@weather['id'].digits.length).to eq(7)
    end

    it "the weather array should contain 4 items"  do
      expect(@weather['id'].digits.length).to eq(7)
    end

    it "the sys hash should contain 6 keys"  do
      expect(@weather['sys'].keys.length).to eq(6)
    end

  end

end
