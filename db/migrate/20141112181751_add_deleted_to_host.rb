class AddDeletedToHost < ActiveRecord::Migration
  def change
  	add_column :hosts, :deleted, :boolean
  end
end
