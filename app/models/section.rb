# == Schema Information
#
# Table name: sections
#
#  id          :integer          not null, primary key
#  name        :string
#  initials    :string
#  status      :integer
#  observation :text
#  kind        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Section < ApplicationRecord
  enum status: %i[active inactive]

  has_many :branch
end
