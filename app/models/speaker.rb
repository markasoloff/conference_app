class Speaker < ApplicationRecord
  has_many :meetings
  validates :first_name, length: { minimum: 2 } 
  validates :last_name, length: { minimum: 2 }
  validates :email, uniqueness: true
  validates :age, length:  { minimum: 18 } 


end
