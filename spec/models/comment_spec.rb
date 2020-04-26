require 'rails_helper'

RSpec.describe Comment,type: :model do

  # <空白>
  it "textは存在 では保存" do
    user = FactoryBot.build(:user)
    shop = FactoryBot.build(:shop)
    comment = FactoryBot.build(:comment)
    expect(comment).to be_valid
  end

  # FactoryBot.build(:comment, text: "")でコメントを空白""に上書き
  it "textは空白 では保存しない" do
    user = FactoryBot.build(:user)
    shop = FactoryBot.build(:shop)
    comment = FactoryBot.build(:comment, text: "")
    expect(comment).to be_invalid
  end
end