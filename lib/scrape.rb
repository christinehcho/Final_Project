require 'nokogiri'
require 'open-uri'

class Weather

  def initialize
    rain = open('http://www.weather.com/weather/today/Westwood+NJ+07675:4:US')
    doc = Nokogiri::HTML(open(rain))
    @percent = doc.css("#wx-forecast-container > div.wx-today.wx-module.wx-grid3of6 > div.wx-weather-details > div:nth-child(14) > div").text
  end

  def percent
    @percent
  end
end

class DailyQuote
  
  def initialize
    inspirational_quote = open('http://www.dailyinspirationalquotes.in/')
    doc = Nokogiri::HTML(open(inspirational_quote))
    @quote = doc.css("article.item:first-child > header > h1 > a").text
  end

  def quote
    @quote
  end
end



# new_update = Weather.new

# new_update.percent