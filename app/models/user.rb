class User < ApplicationRecord
  has_secure_password
  has_many :cours

  validates :username, format:{with:/\A[a-zA-Z0-9]{2,20}\z/,message: 'ne doit contenir que des caractéres alphanumeriques / underscore' } ,uniqueness: {case_sensative: false}, presence: true

   VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email, presence: true,length: {maximum: 255},format: {with: VALID_EMAIL},uniqueness: {case_sensative: false}


end
