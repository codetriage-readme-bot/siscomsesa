# == Schema Information
#
# Table name: branches
#
#  id         :integer          not null, primary key
#  name       :string
#  number     :string
#  status     :integer
#  section_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_branches_on_section_id  (section_id)
#

class Branch < ApplicationRecord
  enum status: %i[active inactive]

  belongs_to :section
end
