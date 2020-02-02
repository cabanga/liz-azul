class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :user_admin

  enum role: {super_admin: 0, admin: 1}

  def current_ag
    user_admin.agrupamento
  end
end
