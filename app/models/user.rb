class User < ActiveRecord::Base
  has_many :microposts, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def feed
    Micropost.where("user_id = ?", id)
  end
  
  validates :name, presence: true, length: { maximum: 50 }
end
