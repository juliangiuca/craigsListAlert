class AddATitle < ActiveRecord::Migration

	def change
    add_column :criteria, :title, :string
  end
end
