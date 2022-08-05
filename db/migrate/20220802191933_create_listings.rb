class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.text :picture_url
      t.integer :price
      t.integer :built
      t.integer :sqrft
      t.integer :bath
      t.integer :bed
      t.boolean :laundry
      t.boolean :superintendent
      t.boolean :to_buy
      t.boolean :to_rent
      t.string :addy
      t.integer :agent_id
      t.integer :city_id
      t.integer :zipcode
    end
  end
end
