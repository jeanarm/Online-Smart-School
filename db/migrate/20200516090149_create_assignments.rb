class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :student_id
      t.string :names
      t.string :assignment
      t.float :marks, default: 0.0 
      t.float :average_out_of15, default: 0.0 
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
