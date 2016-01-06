class Post < ActiveRecord::Base
	belongs_to :user

 	has_attached_file :left, styles: { large: "600x400>" ,medium: "300x200>", thumb: "100x60>" }
 	has_attached_file :right, styles: { large: "600x400>" ,medium: "300x200>", thumb: "100x60>" }
 	validates_attachment_content_type :left, content_type: /\Aimage\/.*\Z/
 	validates_attachment_content_type :right, content_type: /\Aimage\/.*\Z/
end
