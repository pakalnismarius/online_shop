class Bunch < ApplicationRecord
  belongs_to :order
  serialize :color
end
