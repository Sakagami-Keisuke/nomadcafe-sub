class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #nicknameを必須・一意とする
  validates :nickname, presence: true, uniqueness: true
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

  has_many :comments, dependent: :destroy

  #登録時にemailを不要にする
  def email_required?
    false
  end

  def email_changed?
    false
  end
end