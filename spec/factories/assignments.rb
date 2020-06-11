FactoryBot.define do
  factory :assignment do
    student_id { "MyString" }
    names { "MyString" }
    assignment { "MyString" }
    marks { 1.5 }
    average_out_of20 { 1.5 }
    course { nil }
  end
end
