class Product < ApplicationRecord
  validates_presence_of :name, :subtitle, :description
end
