require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require 'pry'
require './lib/scrape.rb'
require './lib/twilio.rb'

get '/' do
  @new_rain = Weather.new
  @new_quote = DailyQuote.new
  erb :index

end

