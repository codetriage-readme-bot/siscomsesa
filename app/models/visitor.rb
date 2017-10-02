# == Schema Information
#
# Table name: visitors
#
#  id         :integer          not null, primary key
#  name       :string
#  register   :string
#  phone      :string
#  kind       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Visitor < ApplicationRecord
end
