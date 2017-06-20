class PostGraduation < ApplicationRecord
  enum status: %i[active inactive]

  validates_presence_of :name, :initials, :seniority, :status

  # This method is used in select fields, and serves for an enum to be
  # internationalized to the application language>
  def self.status_attributes_for_select
    statuses.map do |status, _index|
      [I18n.t(
        "activerecord.attributes.#{model_name.i18n_key}.statuses.#{status}"
      ),
       status]
    end
  end
end
