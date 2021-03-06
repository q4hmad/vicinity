class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :services

  def admin?
    role === 'admin'
  end

  def client?
    role === 'client'
   end

   def updatable_by?(user)
    resource.service == user || user.has_role?(:client)
  end



end
