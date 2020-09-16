class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :work_reservations, dependent: :destroy

  validates :name, length: { maximum: 50 }
  validates :kana, length: { maximum: 50 }
  validates :sex, length: { maximum: 10 }
  validates :email, length: { maximum: 100 }
  validates :line_id, length: { maximum: 1000 }
  validates :address, length: { maximum: 1000 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
