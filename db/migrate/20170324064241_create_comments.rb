class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :comment_content
      t.integer :disaster_id

      t.timestamps
    end
  end
end
