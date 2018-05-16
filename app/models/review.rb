class Review < ApplicationRecord
  belongs_to :Restaurant
  # resources: Review
  Review :resources
end
