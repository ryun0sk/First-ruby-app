class CreateLivings < ActiveRecord::Migration
  def change
    create_table :livings do |t|
      t.references :university, index: true, foreign_key: true
      t.references :residence, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
