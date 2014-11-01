class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true

  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => true

  def average_rating
     if self.reviews.size > 0
        self.reviews.average(:rating)
    end
  end


end
