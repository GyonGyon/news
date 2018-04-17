class User < ApplicationRecord
  # 存入数据前将 此属性值转化为小写
  # before_save { email.downcase! } 等价
  before_save { self.email = email.downcase }
  # 属性限定
  validates :name, presence: true, length: { maximum: 50 }
  # 正则, 验证邮箱
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end