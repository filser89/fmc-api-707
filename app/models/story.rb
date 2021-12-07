class Story < ApplicationRecord
  validates :name, presence: true
  validates :text, presence: true
  belongs_to :user
end
