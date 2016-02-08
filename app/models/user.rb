class User < ActiveRecord::Base
	has_many :posts
	has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	has_attached_file :profilepic, styles: { large: "400x400>" ,medium: "200x200>", thumb: "60x60>" }, default_url: "/images/profile-default.jpg"
  	validates_attachment_content_type :profilepic, content_type: /\Aimage\/.*\Z/

  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
