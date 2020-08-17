FactoryBot.define do
  factory :grade do
    student_id { "MyString" }
    names { "MyString" }
    quiz_1 { 1.5 }
    quiz_2 { 1.5 }
    quiz_3 { 1.5 }
    assignment_1 { 1.5 }
    assignment_2 { 1.5 }
    assignment_3 { 1.5 }
    mid_exam { 1.5 }
    final_exam { 1.5 }
    out_of_100 { 1.5 }
    out_of_20 { 1.5 }
    course { nil }
  end
end
