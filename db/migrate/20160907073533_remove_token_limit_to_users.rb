class RemoveTokenLimitToUsers < ActiveRecord::Migration[5.0]
  
  def change
  	change_column :users, :invitation_token, :string
	end
 
end
