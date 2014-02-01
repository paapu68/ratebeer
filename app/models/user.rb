# -*- coding: utf-8 -*-
class User < ActiveRecord::Base
  include RatingAverage

  validates :username, uniqueness: true
  validates :username, length: { minimum: 3 , maximum: 15}

  has_many :ratings   # käyttäjällä on monta ratingia
end
