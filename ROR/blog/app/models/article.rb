class Article < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   has_many :comments, -> { order('body DESC') }
   # validates :title, presence: true, length: { minimum: 5 }
end
Article.find(26).comments.reorder('name')