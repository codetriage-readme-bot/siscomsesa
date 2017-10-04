# == Schema Information
#
# Table name: visitations
#
#  id         :integer          not null, primary key
#  visitor_id :integer
#  user_id    :integer
#  section_id :integer
#  input      :datetime
#  output     :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_visitations_on_section_id  (section_id)
#  index_visitations_on_user_id     (user_id)
#  index_visitations_on_visitor_id  (visitor_id)
#

class Visitation < ApplicationRecord
  belongs_to :visitor
  belongs_to :user
  belongs_to :section
end
