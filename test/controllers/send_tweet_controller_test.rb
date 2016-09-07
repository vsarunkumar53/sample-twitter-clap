require 'test_helper'

class SendTweetControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get send_tweet_new_url
    assert_response :success
  end

end
