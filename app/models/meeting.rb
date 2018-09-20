class Meeting < ApplicationRecord
  belongs_to :speaker
  has_many :meeting_topics
  has_many :topics, through: :meeting_topics


  validates :title, length: { in: 2..25 } 
  validates :agenda, length: { maximum: 500 }
  validates :remote, inclusion: { in: [true, false] }



end
