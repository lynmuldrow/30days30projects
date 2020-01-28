class CreateDrinkers < ActiveRecord::Migration[6.0]
  def change
    create_table :drinkers do |t|
      t.string :name
      t.string :goal
      t.integer :drank_bottles

      t.timestamps
    end
  end
end
