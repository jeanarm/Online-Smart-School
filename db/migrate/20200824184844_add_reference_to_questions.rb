class AddReferenceToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :course, foreign_key: true
  end
end
