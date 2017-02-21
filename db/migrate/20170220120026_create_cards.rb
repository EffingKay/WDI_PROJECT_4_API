class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.text :content
      t.string :color
      t.integer :pick
      t.integer :user_id
      t.integer :room_id

      t.timestamps
    end
  end
end
