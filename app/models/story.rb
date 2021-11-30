class Story < ApplicationRecord
  validates :name, presence: true
  validates :text, presence: true
end
