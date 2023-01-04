class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :image
      t.string :model
      t.integer :DailyPrice

      t.timestamps
    end
  end
end
