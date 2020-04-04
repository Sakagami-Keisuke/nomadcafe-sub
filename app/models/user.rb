class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 #nicknameを必須・一意とする
 validates :nickname,uniqueness: true
 devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable

 #登録時にemailを不要にする
 def email_required?
   false
 end

 def email_changed?
   false
 end
end