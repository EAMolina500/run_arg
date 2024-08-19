class CreateRaces < ActiveRecord::Migration[7.1]
  def change
    create_table :races do |t|
      t.references :event, null: false, foreign_key: true
      t.string :name
      t.float :distance

      t.timestamps
    end
  end
end
