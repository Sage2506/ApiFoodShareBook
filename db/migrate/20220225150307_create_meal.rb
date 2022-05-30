class CreateMeal < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.datetime :schedule
      t.references :dish, index:true
      t.integer :status, :default => 0
      t.timestamps
    end
  end
end
