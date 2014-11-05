class Extraday < ActiveRecord::Migration
  def change
    add_column :hosts, :extraday, :boolean
  end
end
