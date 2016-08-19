class Post < ActiveRecord::Base
	acts_as_votable
	has_attached_file :image, styles: { medium: "400x400#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  belongs_to :user
end
