FactoryBot.define do
  factory :item do
    title             {Faker::Name.name}
    explanation           {Faker::Lorem.sentence}
    genre_id       {Faker::Number.between(from:2, to: 4)}
    region_id     {Faker::Number.between(from:2, to: 4)}

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'),filename: 'test_image.png')
    end 
  end
end
