class Grade < ApplicationRecord
  belongs_to :course
  before_save :calculate_and_save_average
  def calculate_and_save_average
    assignments=(self.assignment_1+self.assignment_2+self.assignment_3)/3
    quizes=(self.quiz_1+self.quiz_2+self.quiz_3)/3
    self.out_of_100=(quizes + assignments + self. mid_exam + self.final_exam).round(2)
    self.out_of_20= (self.out_of_100/5).round(2)
  end
  paginates_per 10
end
