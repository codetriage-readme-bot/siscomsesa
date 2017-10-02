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

require 'rails_helper'

RSpec.describe Visitor, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
