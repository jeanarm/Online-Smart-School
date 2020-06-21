class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :student_id
      t.string :names
      t.string :evaluation_type
      t.float :marks
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
