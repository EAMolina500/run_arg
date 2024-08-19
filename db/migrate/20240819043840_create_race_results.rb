class CreateRaceResults < ActiveRecord::Migration[7.1]
  def change
    create_table :race_results do |t|
      t.references :runner, null: false, foreign_key: true
      t.references :race, null: false, foreign_key: true
      t.float :time
      t.integer :position

      t.timestamps
    end
  end
end
