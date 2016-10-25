class User < ActiveRecord::Base
	has_many :orders
  belongs_to :seller
  has_many :addresses

  before_save { email.downcase! }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }


  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
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


