class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item
      t.string :location
      t.integer :price
      t.string :url

      t.timestamps
    end
  end
end
