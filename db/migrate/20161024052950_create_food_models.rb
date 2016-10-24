class CreateFoodModels < ActiveRecord::Migration
  def change
    create_table :produces, id: false, force: true do |t|
      t.string :id, limit: 12, null: false
      t.boolean :on_property
      t.string :headline
      t.boolean :is_ripe
      t.boolean :is_growing
      t.text :description
      t.string :farm_address
      t.decimal :price
      t.float :latitude
      t.float :longitude


      t.string :price_measurement
      t.datetime :deleted_at
      t.timestamps null: false
    end
  end
end
