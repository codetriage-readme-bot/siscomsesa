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

require 'rails_helper'

RSpec.describe Branch, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
