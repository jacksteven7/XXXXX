class Post < ActiveRecord::Base
	belongs_to :user

 	has_attached_file :image, styles: { large: "600x400>" ,medium: "300x200>", thumb: "100x60>" }
 	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
