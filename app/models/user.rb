class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :role, :username
  validates_inclusion_of :role, :in=>%w(H M L)
  validates_presence_of :name
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_uniqueness_of :email
  validates_presence_of :password
  validates_presence_of :role
  validates :name, :length => { :minimum => 3 }
  validates :username, :length => { :minimum => 5 }
  validates :password, :length => { :minimum => 6 }
  validates_inclusion_of :branch, :in=>%w(CS EC EE EI NA)
  validates :branch, :length => { :maximum => 2 }, :presence => true
end
