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

  def self.status_attributes_for_select
    statuses.map do |status, _index|
      [I18n.t(
        "activerecord.attributes.#{model_name.i18n_key}.statuses.#{status}"
      ),
       status]
    end
  end
end
