require 'dotenv'
require 'pry'
require 'twitter'
Dotenv.load('.env')

def login_twitter
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end
end
def messages
  client.update('Mon premier tweet Ruby !!')
  client.update('coucou !!')
end

def perform
  login_twitter
  messages
end
perform
