require 'twitter'

class SendTweet

  def initialize(string)
    @string = string
  end

  def log_in_to_twitter
  client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "FFFdr4wB8H5mpOBJMs642gLob"
  config.consumer_secret     = "k961NC67FoECrxQSX6bbyuFxRisZrFvXAbFqsqKeuX0SmSjtQI"
  config.access_token        = "918066501185425408-mKwW0DCWGLnUc147HWj1QEs5H8E19nI"
  config.access_token_secret = "U8JrnzorST7yGT0zKNg6RHn7KoyXHfHhwcKBMC2ez7qaO"
  end 
end

  def perform
    log_in_to_twitter
    @client.update(@string)
  end
end