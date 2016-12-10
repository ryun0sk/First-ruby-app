class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.references :agent, index: true, foreign_key: true
      t.references :university, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
