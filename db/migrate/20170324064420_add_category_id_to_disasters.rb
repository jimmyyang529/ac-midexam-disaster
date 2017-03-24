class AddCategoryIdToDisasters < ActiveRecord::Migration[5.0]
  def change
  	add_column :disasters, :category_id, :integer
  end
end
