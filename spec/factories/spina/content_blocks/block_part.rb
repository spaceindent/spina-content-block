FactoryGirl.define do
  factory :spina_content_block_part, class: Spina::ContentBlock::BlockPart do
    name 'Content part for footer'
    title 'Header'
    page_partable_type 'Spina::Line'

    trait :invalid do
      name nil
      title nil
      page_partable_type nil
    end
  end
end
