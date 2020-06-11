class Assignment < ApplicationRecord
  belongs_to :course
      def calculate_marks_average
      Assignment.where(:student_id => self.student_id).average(:marks).round(2)
      
      end


end
