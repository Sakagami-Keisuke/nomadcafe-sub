require 'rails_helper'

RSpec.describe User,type: :model do

  # <空白>
  it "name,passwordは存在 では保存" do
    user = User.new( nickname: "kei", password: "rspec0000" )
    expect(user.save).to be_truthy
  end

  it "nameは空白, passwordは存在 では保存しない" do
    user = User.new( nickname: "", password: "rspec0000" )
    expect(user.save).to be_falsey
  end

  it "nameは存在, passwordは空白 では保存しない" do
    user = User.new( nickname: "kei", password: "" )
    expect(user.save).to be_falsey
  end

    # <一意性>
  it "name  すでに使用されている文字列は保存しない" do
    user = User.create( nickname: "kei", password: "rspec0000" )
    dup_user = User.new( nickname: "kei", password: "dupuser0000" )
    expect(dup_user).to be_invalid
  end

  it "name  すでに使用されている文字列は大文字小文字を区別せず保存しない" do
    user = User.create( nickname: "kei", password: "rspec0000" )
    dup_user = User.new( nickname: "KEI", password: "dupuser0000" )
    expect(dup_user).to be_invalid
  end

  it "name  すでに使用されている文字列は大文字小文字を区別せず保存しない" do
    user = User.create( nickname: "kei", password: "rspec0000" )
    dup_user = User.new( nickname: "KEI", password: "dupuser0000" )
    expect(dup_user).to be_invalid
  end

    #<パスワード最低6文字>
  it "password  5文字は保存しない" do
    user = User.new( nickname: "kei", password: "rspe0" )
    expect(user).to be_invalid
  end

  it "password  6文字は保存される" do
    user = User.new( nickname: "kei", password: "rspec0" )
    expect(user).to be_valid
  end

  #<パスワード半角英数制限>
  it "password  6文字以上、半角英字のみは保存" do
    user = User.new( nickname: "kei", password: "rspectest" )
    expect(user).to be_valid
  end

  it "password  6文字以上、半角数字のみは保存" do
    user = User.new( nickname: "kei", password: "00123455" )
    expect(user).to be_valid
  end

  it "password  6文字以上、半角英数は保存" do
    user = User.new( nickname: "kei", password: "rspec00123455" )
    expect(user).to be_valid
  end

  it "password  6文字以上、全角カナを含むと保存しない" do
    user = User.new( nickname: "kei", password: "アールspec" )
    expect(user).to be_invalid
  end

  it "password  6文字以上、全角英字を含むと保存しない" do
    user = User.new( nickname: "kei", password: "ｒｓpectest" )
    expect(user).to be_invalid
  end



  
end