class Grade < ApplicationRecord
  belongs_to :course
  validates :names, presence: true, length: {maximum: 40}
  validates :student_id, presence: true,length: { minimum: 5, maximum: 5}
  # uniqueness: true, 
  before_save :calculate_and_save_average
  def calculate_and_save_average
    assignments=(self.assignment_1+self.assignment_2+self.assignment_3)/3
    quizes=(self.quiz_1+self.quiz_2+self.quiz_3)/3
    self.out_of_100=(quizes + assignments + self. mid_exam + self.final_exam).round(2)
    self.out_of_20= (self.out_of_100/5).round(2)
  end
  paginates_per 4
end
