class Meeting < ApplicationRecord
  belongs_to :speaker

  validates :title, length: { in: 2..25 } 
  validates :agenda, length: { maximum: 500 }
  validates :remote, inclusion: { in: [true, false] }


end
