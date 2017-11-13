class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :host, :class_name => 'User'
  has_many :reservations
  has_many :reviews, through: :reservations

  # def self.guests
  #   self.users.where() #where users are guests
  # end

end
