class PostGraduation < ApplicationRecord
  enum status: [:active, :inactive]
end
