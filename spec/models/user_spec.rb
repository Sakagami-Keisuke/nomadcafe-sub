require 'rails_helper'
describe User do
  describe '#create' do
    it "nicknameがない場合は登録できないこと" do
      user = User.new(nickname: "", email: "test@test.com", password: “test0000”, password_confirmation: "test0000")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end
  end
end