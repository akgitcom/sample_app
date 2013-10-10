class User < ActiveRecord::Base
	
	before_save { self.email = email.downcase }
	# before_save :downcase_email

	# def downcase_email
	# 	self.email.downcase!
	# end
	validates :name,  presence: true, length: { maximum: 50 }
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true,
				format: { with: VALID_EMAIL_REGEX },
				uniqueness: { case_sensitive: false }
	# validates(:name, presence: true)
	# 使用的回调函数是 before_save，在用户存入数据库之前强行把 Email 地址转换成全小写字母形式
	
	has_secure_password
	validates :password, length: { minimum: 6 }
end
