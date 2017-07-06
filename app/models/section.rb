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
  enum kind: %i[cmdo cia em scmdo section]

  has_many :branch
end
