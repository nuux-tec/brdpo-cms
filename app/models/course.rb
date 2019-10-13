class Course < ApplicationRecord
  has_rich_text :about

  validates :name, presence: true
  validates :about, presence: true
  validates :price, presence: true
  validates :duration, presence: true
  validates :when, presence: true
end
