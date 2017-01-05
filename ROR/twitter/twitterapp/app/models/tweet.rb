class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  validates :body, presence: true

  default_scope -> { order('created_at DESC') }


 
end
