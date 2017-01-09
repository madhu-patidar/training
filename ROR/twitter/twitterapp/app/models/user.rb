class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook,:google_oauth2,:twitter]         
  
  has_many :tweets, dependent: :destroy
  has_many :comments

  has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "download.png"
  
  has_many :follwing, through: :active_relationships, source: :followed
  has_many :follwers, through: :passive_relationships, source: :follower
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
 
  validates :name, presence: true
  validates :password, length: {minimum:  6}, allow_blank: true

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails, 
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end


  

  def follow(other)
    active_relationships.create(followed_id: other.id)
  end

  def unfollow(other)
    active_relationships.find_by(followed_id: other.id).destroy    
  end

  def following?(other)
    follwing.include?(other) 
  end


end
