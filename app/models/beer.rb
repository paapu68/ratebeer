class Beer < ActiveRecord::Base
  include RatingAverage

  validates :name, uniqueness: true
  validates :name, presence: true, allow_blank: false 

  belongs_to :brewery

  has_many :ratings, dependent: :destroy

  def to_s
    "#{name} #{brewery.name}"
  end
end


