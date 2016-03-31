class Rental < ActiveRecord::Base
  belongs_to :order_status
  has_many :bikes
end
