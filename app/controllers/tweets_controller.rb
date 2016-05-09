class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
  end

  def create
    Tweet.create(name: tweet_params[:name], text: tweet_params[:text])
  end

  def tweet_params
    params.permit(:name,:text)
  end

end
