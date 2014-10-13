class AddMoreToHosts < ActiveRecord::Migration
  def change
    add_column :hosts, :beenhost, :boolean
    add_column :hosts, :sex, :integer
  end
end
