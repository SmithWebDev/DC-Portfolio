module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "http://via.placeholder.com/#{height}x#{width}"
  end
end

#{height}
#{width}
 
"http://via.placeholder.com/250x250"

"http://via.placeholder.com/600x400"
"http://via.placeholder.com/300"