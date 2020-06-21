FactoryBot.define do
  factory :grade do
    student_id { "MyString" }
    names { "MyString" }
    evaluation_type { "MyString" }
    marks { 1.5 }
    course { nil }
  end
end
