class Produce < ActiveRecord::Base
  include Slugger
  include Scoper

  acts_as_paranoid
  has_paper_trail on: [:update, :destroy]
  geocoded_by :farm_address
  after_validation :geocode
end