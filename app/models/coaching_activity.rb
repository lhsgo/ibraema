class CoachingActivity < ApplicationRecord
  belongs_to :institution
  has_many :facilitators
end