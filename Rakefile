require_relative './lib/twilio.rb'
require_relative './lib/scrape.rb'

task :alert_rain do
  new_rain = Weather.new
  if new_rain.percent.delete("%").to_i >= 50

    text = Text1.new("+12012706771")
    text.send
  #else
  #puts "No rain today!"
  end
end

task :send_quote do
  new_quote = DailyQuote.new
  text = Text2.new("+12012706771")
  text.send
end






# 1. define your task
# 2. create a new instance of your Weather class
# 3. see if the value of @percent is > 50
# 4. if it is greater than 50%, create a new instance of your text class and call the send method on it