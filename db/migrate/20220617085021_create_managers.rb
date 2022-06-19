class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :project
      t.string :description
      t.integer :state
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
