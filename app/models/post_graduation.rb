# == Schema Information
#
# Table name: post_graduations
#
#  id         :integer          not null, primary key
#  name       :string
#  initials   :string
#  seniority  :integer
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PostGraduation < ApplicationRecord
  enum status: %i[active inactive]

  has_many :users

  validates :name, :initials, :seniority, :status, presence: true
end
