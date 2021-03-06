class User < ApplicationRecord
    has_many :entries   #one of the parts of one-to-many-association
    has_secure_password
    validates :username , presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 5, maximum: 20}
   
    #constans in ruby are declared using all CAPS
    REGEX_PATTERN = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i #a regex form for checking correctness of an email
    before_save { self.email = email.downcase }
    validates :email, presence: true, uniqueness: {case_sensitive: false}, length: {maximum: 128}, format: {with: REGEX_PATTERN}

end