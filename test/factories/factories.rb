FactoryGirl.define do

  factory :customer do
    first_name { Faker::Name.name }
    last_name  { Faker::Name.last_name }
    email      { Faker::Internet.email }
    address    { Faker::Address.street_address }
    city       { Faker::Address.city }
    state      { Faker::Address.state }
    zipcode    { Faker::Address.zip_code }
  end

  factory :order do
    order_date { Faker::Date.between(2.days.ago, Date.today) }
    amount     { Faker::Commerce.price }
  end

  factory :author do
    name { Faker::Name.name }
  end

  factory :book do
    published_at { Faker::Date.between(2.days.ago, Date.today) }
  end

end
