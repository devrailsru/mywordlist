class Word < ApplicationRecord
  include PgSearch
  pg_search_scope :search_everywhere, against: [:title]
end
