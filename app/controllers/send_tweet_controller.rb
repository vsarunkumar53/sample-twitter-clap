class SendTweetController < ApplicationController
  
  def new
    
  end

  def create
    Message.create!(:message => twitter_params[:message], :user_id => current_user.id)
    TweetJob.perform_async(current_user.tweet(twitter_params[:message]))
  end

  def retweet
    @messages = Message.all    		
  end

  def retweeter_msg
    id = params[:retweet][:id]
    msg = Message.find(id)
    users = User.where(:retweet => true)
    if users
      users.each do |user| 
        TweetJob.perform_async(user.tweet(msg.message)) 
      end
      redirect_to root_url, notice: "Request for retweeting is accepted"
    else
      redirect_to root_url, notice: "Not found any users for retweet"
    end      
  end

  def twitter_params
    params.require(:tweet).permit(:message)
  end

  def retwitter_params
    params.require(:retweet).permit(:id)
  end
end
