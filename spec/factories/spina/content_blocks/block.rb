FactoryGirl.define do
  factory :spina_content_block, class: Spina::ContentBlock::Block do
    name 'Content block for Footer'
    slug 'Footer'

    trait :invalid do
      name nil
      slug nil
    end
  end
end
