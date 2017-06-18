class PostGraduation < ApplicationRecord
  enum status: [:active, :inactive]

  validates_presence_of :name, :initials, :seniority, :status

  def self.status_attributes_for_select
     statuses.map do |status, index|
       [I18n.t("activerecord.attributes.#{model_name.i18n_key}.statuses.#{status}"), status]
     end
   end
end
