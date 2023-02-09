class Task < ApplicationRecord
  belongs_to :project
  has_many :items, dependent: :destroy

  validates :title, presence: true
end
