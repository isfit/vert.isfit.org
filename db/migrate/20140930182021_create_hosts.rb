class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.timestamps
      #Legges det til id av seg selv?
      t.firstname :firstname
      t.lastname :lastname
      t.address :address
      t.zipcode :zipcode
      t.city :city
      t.phone :phone
      t.capacity :capacity
      t.comments :comments
    end
  end
end
