class Host < ActiveRecord::Base
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :address, presence: true
  validates :zipcode, presence: true
  validates :city, presence: true
  validates :phone, presence: true
  validates :capacity, presence: true
  validates :sleeping, presence: true
  validates :extraday, presence: true

  def name
  	"#{firstname} #{lastname}"
  end
end
