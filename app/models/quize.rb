class Quize < ApplicationRecord
  belongs_to :course
  def calculate_marks_average
    # self.average_out_of15=self.class.average(:marks)
    # .where(:student_id => self.student_id)
  Quize.where(:student_id => self.student_id).average(:marks).round(2)
   
  end
end
