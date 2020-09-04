class TodoItem < ApplicationRecord
  validates :item_name, presence: true
  validates :body, presence: true
  validates :status, presence: true
  belongs_to :user
  has_many :comments
end
