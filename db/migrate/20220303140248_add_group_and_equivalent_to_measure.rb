class AddGroupAndEquivalentToMeasure < ActiveRecord::Migration[7.0]
  def change
    add_column :measures, :group, :integer
    add_column :measures, :equivalent, :float
  end
end
