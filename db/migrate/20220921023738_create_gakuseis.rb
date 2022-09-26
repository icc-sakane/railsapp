class CreateGakuseis < ActiveRecord::Migration[6.0]
  def change
    create_table :gakuseis do |t|
      t.string :name
      t.integer :age
      t.string :gakusei_no

      t.timestamps
    end
  end
end
