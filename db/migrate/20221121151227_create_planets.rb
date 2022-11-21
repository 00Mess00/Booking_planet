class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :localisation
      t.integer :capacity
      t.text :description
      t.integer :price_per_millenia
      t.float :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
