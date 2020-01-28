class CreateBottles < ActiveRecord::Migration[6.0]
  def change
    create_table :bottles do |t|
      t.integer :datetime
      t.integer :amount_consumed

      t.timestamps
    end
  end
end
