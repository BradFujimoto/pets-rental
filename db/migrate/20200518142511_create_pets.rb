class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :environment
      t.string :species
      t.string :address
      t.integer :average_rating
      t.integer :age
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
