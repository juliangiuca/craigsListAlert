class CreateUserCriteria < ActiveRecord::Migration
  def change
    create_table :user_criteria do |t|

    	t.integer :user_id
    	t.integer :criteria_id

      t.timestamps
    end
  end
end
