require_relative './Slugify.rb'

class Artist < ActiveRecord::Base
  extend Slugify::find_by_slug
  include Slugify::slug

  has_many :songs
  has_many :genres, through: :songs
end
