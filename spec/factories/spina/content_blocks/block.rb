FactoryGirl.define do
  factory :spina_content_block, class: Spina::ContentBlock::Block do
    name { Faker::Lorem.sentence }
    slug { Faker::Internet.slug }

    trait :invalid do
      name nil
      slug nil
    end
  end
end
