class Onedayearly < ActiveRecord::Migration
  def change
  	add_column :hosts, :Onedayearly, :boolean
  end
end
