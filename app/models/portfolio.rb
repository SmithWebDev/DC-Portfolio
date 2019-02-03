class Portfolio < ApplicationRecord
  validates_presence_of :main_image, :title, :body, :thumb_image
end
