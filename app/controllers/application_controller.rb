class ApplicationController < ActionController::Base

  rescue_from Twitter::Error do |exception|
    respond_to do |format|
      format.html { redirect_to send_tweet_new_path, :notice => exception.message }
    end
  end 

end
