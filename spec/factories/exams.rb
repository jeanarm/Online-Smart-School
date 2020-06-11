FactoryBot.define do
  factory :exam do
    student_id { "MyString" }
    names { "MyString" }
    mid_exam { 1.5 }
    final_exam { 1.5 }
    course { nil }
  end
end
