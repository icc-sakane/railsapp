class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :author
      t.integer :price
      t.string :publisher
      t.text :memo

      t.timestamps
    end
  end
end
