class AddPostDateToDisasters < ActiveRecord::Migration[5.0]
  def change
  	add_column :disasters, :post_date, :date
  end
end
