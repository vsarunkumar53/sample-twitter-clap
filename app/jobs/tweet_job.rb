class TweetJob < ApplicationJob
  include SuckerPunch::Job

  def perform(event)
    Log.new(event).track
  end
  
end
