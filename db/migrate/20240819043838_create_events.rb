class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.references :organization, null: false, foreign_key: true
      t.string :name
      t.date :date
      t.string :location

      t.timestamps
    end
  end
end
