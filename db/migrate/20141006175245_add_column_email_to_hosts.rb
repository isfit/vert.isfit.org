class AddColumnEmailToHosts < ActiveRecord::Migration
  def change
    add_column :hosts, :email, :string
  end
end
