class PostGraduation < ApplicationRecord
  enum status: [:active, :inactive]

  validates_presence_of :name, :initials, :seniority, :status
end
