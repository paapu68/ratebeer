# -*- coding: utf-8 -*-
class User < ActiveRecord::Base
  include RatingAverage

  validates :username, uniqueness: true
  validates :username, length: { minimum: 3 , maximum: 15}
  validates :password, length: { minimum: 4}
  validates :password, length: {
    minimum: 1,
    tokenizer: lambda { |str| str.scan(/^[A-Z]+/) },
    too_short: "must have at least %{count} BIG LETTERS",
  }
  validates :password, length: {
    minimum: 1,
    tokenizer: lambda { |str| str.scan(/\d+/) },
    too_short: "must have at least %{count} number",
  }
  has_many :ratings
  has_many :beers, through: :ratings

  has_secure_password
end
