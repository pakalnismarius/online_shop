class Order < ApplicationRecord
  belongs_to :customer
  has_many :bunchs
end
