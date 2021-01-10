FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    association :user
    association :room
    
    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_images.png'), filename: 'test_images.png')
    end
  end
end