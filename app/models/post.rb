class Post < ActiveRecord::Base
	acts_as_votable
  acts_as_commentable
  mount_uploader :image, ImageUploader
	# has_attached_file :image, styles: { medium: "640x640#" }, default_url: "/images/:style/missing.png"
 #  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  belongs_to :user
end
