class CreateKimatus < ActiveRecord::Migration[6.0]
  def change
    create_table :kimatus do |t|
      t.integer :gakusei_id
      t.integer :kbn
      t.integer :kokugo
      t.integer :sugaku
      t.integer :eigo

      t.timestamps
    end
  end
end
