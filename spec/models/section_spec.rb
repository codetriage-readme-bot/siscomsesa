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

require 'rails_helper'

RSpec.describe Section, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
