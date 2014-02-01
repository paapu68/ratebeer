class Brewery < ActiveRecord::Base
  include RatingAverage

  validates :name, uniqueness: true
  validates :name, presence: true, allow_blank: false 
  validates :year, numericality: { only_integer: true }
  validates :year, :numericality => { :greater_than => 1042, :less_than_or_equal_to => 2014 }


  has_many :beers, dependent: :destroy
  has_many :ratings, through: :beers

end
