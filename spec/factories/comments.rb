FactoryBot.define do
  factory :comment do
    text      { "とても静かな店内で作業が捗ったーー" }

    user
    shop
  end
end