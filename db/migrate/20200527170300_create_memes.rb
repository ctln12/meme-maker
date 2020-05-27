class CreateMemes < ActiveRecord::Migration[6.0]
  def change
    create_table :memes do |t|
      t.string :name
      t.string :url
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
