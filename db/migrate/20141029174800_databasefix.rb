class Databasefix < ActiveRecord::Migration
  def change
    add_column :hosts, :isstudent, :boolean
    add_column :hosts, :animales, :boolean 
    add_column :hosts, :sleeping, :int
  end
end
