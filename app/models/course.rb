class Course < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :credit, presence: true
  validates :code, presence: true
  has_many :grades, dependent: :destroy 
  has_many :materials, dependent: :destroy 
  has_many :assignments, dependent: :destroy 
  has_many :quizes, dependent: :destroy 
  has_one :exam, dependent: :destroy
  paginates_per 5
end
