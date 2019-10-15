class News < ApplicationRecord
  has_rich_text :content

  validates :title, presence: true
  validates :content, presence: true

  enum status: [:published, :disabled]

  has_one_attached :image

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
