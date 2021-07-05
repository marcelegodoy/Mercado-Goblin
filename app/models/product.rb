class Product < ApplicationRecord
  has_rich_text :description

  validates_presence_of :name, :subtitle
end
