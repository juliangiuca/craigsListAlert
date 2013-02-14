class AddATitle < ActiveRecord::Migration

	def change
    add_column :criterias, :title, :string
  end
end
