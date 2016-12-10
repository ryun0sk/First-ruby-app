class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.string :adress
      t.string :tel

      t.timestamps null: false
    end
  end
end
