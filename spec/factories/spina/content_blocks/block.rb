FactoryGirl.define do
  factory :spina_content_block, class: Spina::ContentBlock::Block do
    name { Faker::Lorem.sentence }
    title { Faker::Lorem.sentence }
    slug { Faker::Internet.slug }
    draft false

    trait :draft do
      draft true
    end

    trait :invalid do
      name nil
      slug nil
    end
  end
end
