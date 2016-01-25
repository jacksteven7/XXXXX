class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :user

	acts_as_votable
 	has_attached_file :left, styles: { large: "400x400>" ,medium: "200x200>", thumb: "60x60>" }
 	has_attached_file :right, styles: { large: "400x400>" ,medium: "200x200>", thumb: "60x60>" }
 	validates_attachment_content_type :left, content_type: /\Aimage\/.*\Z/
 	validates_attachment_content_type :right, content_type: /\Aimage\/.*\Z/
end
