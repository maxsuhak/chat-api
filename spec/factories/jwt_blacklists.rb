FactoryBot.define do
  factory :jwt_blacklist do
    jti { 'MyString' }
    exp { '2020-03-30 14:38:01' }
  end
end
