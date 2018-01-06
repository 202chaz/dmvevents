class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :assignments
  has_many :roles, through: :assignments
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def role?(role)
      roles.any? { |r| r.name.underscore.to_sym == role }
  end
  
  def is_admin?
    role? :admin
  end
  
  def is_content_manager?
    role? :content_manager
  end
  
  def has_proper_access?
    is_admin? || is_content_manager?
  end
end
