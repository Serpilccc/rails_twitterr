class HomeController < ApplicationController
  def homepage
  	SendTweet.new.perform
  end


  def send_tweet
    SendTweet.new.perform
    render 'homepage'
  end

  private
  def params_tweet
    params.require(:params_tweet).permit(:tweet)
  end
end
