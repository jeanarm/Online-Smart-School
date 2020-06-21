class Course < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :credit, presence: true
  validates :code, presence: true
  has_many :grades, dependent: :destroy 
  paginates_per 5
end
