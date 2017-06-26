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

require 'rails_helper'

RSpec.describe PostGraduation, type: :model do
end
