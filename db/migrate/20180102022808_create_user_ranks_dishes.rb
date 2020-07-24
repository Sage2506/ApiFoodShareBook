class CreateUserRanksDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_ranks_dishes do |t|
      t.references :user, index:true
      t.references :dish, index:true
      t.integer :rank, null:false
      t.timestamps
    end
  end
end
