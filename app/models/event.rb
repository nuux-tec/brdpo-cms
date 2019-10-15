class Event < ApplicationRecord
  has_rich_text :about

  validates :name, presence: true
  validates :about, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :when, presence: true

  has_one_attached :image

  enum status: [:published, :disabled]

  before_create :set_default_status

  def set_default_status
    self.status = 'published'
  end

  def publish
    update(status: 'published')
  end

  def disable
    update(status: 'disabled')
  end
end
