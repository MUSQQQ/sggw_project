class User < ApplicationRecord
   validates :username , presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 5, maximum: 20}
   
   #constans in ruby are declared using all CAPS
   REGEX_PATTERN = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i #a regex form for checking correctness of an email

   validates :email, presence: true, uniqueness: {case_sensitive: false}, length: {maximum: 128}, format: {with: REGEX_PATTERN}

end