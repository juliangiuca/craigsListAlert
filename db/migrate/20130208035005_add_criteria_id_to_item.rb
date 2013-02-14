class AddCriteriaIdToItem < ActiveRecord::Migration
  def change
    add_column :items, :criteria_id, :integer
  end
end
