class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :host, :class_name => 'User'
  has_many :reservations
  has_many :reviews, through: :reservations

  def guests
    self.reservations.collect{|inst| inst.guest}
  end

end
