class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      #Legges det til id av seg selv?
      t.string  :firstname
      t.string :lastname
      t.string :address
      t.integer :zipcode
      t.string :city
      t.string :phone
      t.integer :capacity
      t.text :comments

      t.timestamps
    end
  end
end
