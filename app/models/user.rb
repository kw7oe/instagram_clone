class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_attached_file :profile_picture, styles: { medium: "300x300>" }, default_url: "missing_user.jpg"
  validates_attachment_content_type :profile_picture, content_type: /\Aimage\/.*\Z/
end
