class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.string :student_id
      t.string :names
      t.float :mid_exam, default: 0.0 
      t.float :final_exam, default: 0.0 
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
