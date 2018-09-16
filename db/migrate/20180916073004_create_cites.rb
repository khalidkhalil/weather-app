class CreateCites < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :city_id
      t.string :country
      t.float :longitude
      t.float :latitude
    end
  end
end
