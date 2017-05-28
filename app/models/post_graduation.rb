class PostGraduation < ApplicationRecord
  enum status: %i[active inactive]
end
