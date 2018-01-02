class DropTableRanks < ActiveRecord::Migration[5.1]
  def change
    drop_table :user_ranks_dishes
  end
end
