class User < ActiveRecord::Base
	has_many :orders
  belongs_to :seller
  has_many :addresses

 # attr_accessor :password
  #EMAIL_REGEX = /\A[a-zA-Z0-9]*\z/
  #validates :name, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  #validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  #validates :password, :confirmation => true #password_confirmation attr
  #validates_length_of :password, :in => 6..20, :on => :create

  #before_save :password
  #after_save :clear_password
  #def encrypt_password
  #if password.present?
  #  self.salt = BCrypt::Engine.generate_salt
   # self.password= BCrypt::Engine.hash_secret(password, salt)
  #end
  #end
  #def clear_password
  #self.password = nil
  #end
  #attr_accessor :name, :email, :password, :password_confirmation

end


