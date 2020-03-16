class Grade < ApplicationRecord
  belongs_to :course
  before_save :calculate_and_save_average
def calculate_and_save_average
  self.total_out_100=self.quiz + self.assignment + self. mid_semester + self.final_exam
  self.total_out_20= self.total_out_100/5
end
end
