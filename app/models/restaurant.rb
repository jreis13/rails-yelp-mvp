class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, acceptance: { accept: %w[Chinese Italian Japanese French Belgian], message: '- Pick one of: Chinese, Italian, Japanese, French or Belgian' }
end
