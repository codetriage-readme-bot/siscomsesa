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

  validates_presence_of :name, :initials, :seniority, :status
end
