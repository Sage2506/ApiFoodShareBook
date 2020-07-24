class CreateUserLikesDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_likes_dishes do |t|
      t.references :user, index:true
      t.references :dish, index:true
      t.timestamps
    end
  end
end
