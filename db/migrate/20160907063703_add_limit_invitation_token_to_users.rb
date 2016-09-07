class AddLimitInvitationTokenToUsers < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :invitation_token, :string, :limit => 30
	end
end
