class CreateBookmarklets < ActiveRecord::Migration
  def change
    create_table :bookmarklets do |t|

      t.timestamps
    end
  end
end
