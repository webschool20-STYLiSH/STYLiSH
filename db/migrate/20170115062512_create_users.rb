class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :profile
      t.string :gender
      t.string :country

      t.timestamps
    end
  end
end
