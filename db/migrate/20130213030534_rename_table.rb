class RenameTable < ActiveRecord::Migration
  def up
  	rename_table("criteria", "criterias")
  	rename_table("user_criteria", "user_criterias")
  end

  def down
  	rename_table("user_criterias", "user_criteria")
  	rename_table("criterias", "criteria")
  end
end
