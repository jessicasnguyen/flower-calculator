class CreateFlowers < ActiveRecord::Migration[7.0]
  def change
    create_table :flowers do |t|
      t.string :name
      t.string :color
      t.integer :bunch
      t.float :price

      t.timestamps
    end
  end
end
