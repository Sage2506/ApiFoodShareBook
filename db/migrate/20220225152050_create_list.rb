class CreateList < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.references :user, index:true
      t.integer :status , :default => 0

      t.timestamps
    end
  end
end
