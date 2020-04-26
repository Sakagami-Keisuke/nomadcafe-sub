class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

  #nicknameは空白NG 一意性
  validates :nickname, presence: true, uniqueness: true, uniqueness: { case_sensitive: false }

  # パスワード認証に半角英数字だけを許可
  VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
  validates :password, format: { with: VALID_PASSWORD_REGEX }

  #登録時にemailを不要にする
  def email_required?
    false
  end
  def email_changed?
    false
  end

  has_many :comments, dependent: :destroy
end