class CreateAddimageurl < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :picture_url, :text
  end
end
