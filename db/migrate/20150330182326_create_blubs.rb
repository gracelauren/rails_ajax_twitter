class CreateBlubs < ActiveRecord::Migration
  def change
    create_table :blubs do |t|
      t.string :content
      t.integer :user_id
      t.timestamps
    end
  end
end
