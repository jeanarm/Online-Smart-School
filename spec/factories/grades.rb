FactoryBot.define do
  factory :grade do
    student_id { "MyString" }
    names { "MyString" }
    assignment { 1.5 }
    quiz { 1.5 }
    mid_semester { 1.5 }
    final_exam { 1.5 }
    total_out_100 { 1.5 }
    total_out_20 { 1.5 }
    course { nil }
  end
end
