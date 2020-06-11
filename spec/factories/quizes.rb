FactoryBot.define do
  factory :quize do
    student_id { "MyString" }
    names { "MyString" }
    quiz { "MyString" }
    marks { 1.5 }
    average_out_of20 { 1.5 }
    course { nil }
  end
end
