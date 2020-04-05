class Course < ApplicationRecord
  belongs_to :user
  has_many :grades, dependent: :destroy 
  has_many :materials, dependent: :destroy 
  validates :name, presence: true
  validates :credit, presence: true
  validates :code, presence: true
  paginates_per 5
end
