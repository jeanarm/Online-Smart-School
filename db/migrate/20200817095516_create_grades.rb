class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :student_id
      t.string :names
      t.float :quiz_1, default: 0.0 
      t.float :quiz_2, default: 0.0 
      t.float :quiz_3, default: 0.0 
      t.float :assignment_1, default: 0.0 
      t.float :assignment_2, default: 0.0 
      t.float :assignment_3, default: 0.0 
      t.float :mid_exam, default: 0.0 
      t.float :final_exam, default: 0.0 
      t.float :out_of_100, default: 0.0
      t.float :out_of_20, default: 0.0
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
