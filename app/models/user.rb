class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def user_params
    
    params.required(:user).permit(:email, :password, :password_confirmation, :remember_me)
    
  end
  

    has_many:orders           
end
