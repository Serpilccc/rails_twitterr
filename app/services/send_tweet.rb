require 'twitter'

def initialize(string)
      @string = string
  end
    
def perform
  log_in_to_twitter
  send_tweet
end

private
        
  def log_in_to_twitter
  client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "........."
  config.consumer_secret     = "........;"
  config.access_token        = "E19nI........."
  config.access_token_secret = "Uz7qaO......."
end 
end
    
    def send_tweet
        client.update(@string)
    end
    
end
end

    




