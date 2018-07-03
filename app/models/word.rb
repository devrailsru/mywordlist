class Word < ApplicationRecord
  include PgSearch
  pg_search_scope :search_everywhere, against: [:title]
  belongs_to :user
  validates :title, :translation, presence: true
end
