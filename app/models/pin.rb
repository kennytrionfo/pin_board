class Pin < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	
	has_attached_file :image, styles: {  } # These did have this in them but it prevented from saving an image so I took out:     medium: "300x300>"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
 