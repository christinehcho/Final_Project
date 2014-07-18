require 'rubygems'
require 'twilio-ruby'
require 'nokogiri'
require 'open-uri'

require_relative "scrape.rb"

class Text1

  def initialize (to)
    @to = to
  end

  def send
    new_rain = Weather.new

    account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
    auth_token = '2008ea097713e401a16c54029058da82'

    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create(
      :from => '+18152642023',
      :to => @to,
      :body => "The chance of rain is #{new_rain.percent}. Don't forget to bring an umbrella!"
    )
  end
end

class Text2

  def initialize (to)
    @to = to

  end

  def send
    new_quote = DailyQuote.new

    account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
    auth_token = '2008ea097713e401a16c54029058da82'

    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create(
      :from => '+18152642023',
      :to => @to,
      :body => "Inspirational Quote of the Day: #{new_quote.quote}"
    )
  end
end