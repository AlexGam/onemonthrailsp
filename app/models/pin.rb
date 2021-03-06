class Pin < ActiveRecord::Base
	belongs_to :user
	
	#may can use , :default_url => "/images/:style/missing.png"
	has_attached_file :image, :styles => { :medium => "300x300>", :large => "600x600", :thumb => "100x100>" }
	
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	
	validates :image, presence: true
  	validates :description, presence: true
end
