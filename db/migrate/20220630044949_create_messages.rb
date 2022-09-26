class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :person_id
      t.string :title
      t.text :message

      t.timestamps
    end
  end
end
