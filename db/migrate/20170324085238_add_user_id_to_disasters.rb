class AddUserIdToDisasters < ActiveRecord::Migration[5.0]
  def change
  	add_column :disasters, :user_id, :integer
  end
end
