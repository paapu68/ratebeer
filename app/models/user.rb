# -*- coding: utf-8 -*-
class User < ActiveRecord::Base
  has_many :ratings   # käyttäjällä on monta ratingia
end
