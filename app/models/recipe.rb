class Recipe < ApplicationRecord

	has_attached_file :image, styles: { medium: "300x300>" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	validates :title, presence: true, length: {minimum:3}
end
