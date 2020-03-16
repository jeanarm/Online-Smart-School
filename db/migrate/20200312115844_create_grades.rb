class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :student_id
      t.string :names
      t.float :assignment, default: 0.0 
      t.float :quiz, default: 0.0 
      t.float :mid_semester, default: 0.0 
      t.float :final_exam, default: 0.0 
      t.float :total_out_100, default: 0.0 
      t.float :total_out_20, default: 0.0 
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
