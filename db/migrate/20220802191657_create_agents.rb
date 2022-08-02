class CreateAgents < ActiveRecord::Migration[6.1]
  def change
    create_table :agents do |t|
      t.string :first_name
      t.string :last_name
      t.integer :rating
      t.string :agent_fee
      t.string :agency
    end
  end
end