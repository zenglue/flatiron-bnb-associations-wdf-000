class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :host, :class_name => "User"
  has_many :reservations
  has_many :guests, :class_name => "User", :though => :reservations
  has_many :reviews
end
