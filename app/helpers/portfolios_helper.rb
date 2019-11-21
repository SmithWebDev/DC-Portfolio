module PortfoliosHelper
  def image_generator(height:, width:)
    "http://via.placeholder.com/#{height}x#{width}"
  end
  def portfolio_img img, type
    #byebug
    if img
      img
    elsif type == 'thumb'
      image_generator(height: '350', width: '200')
    else
      image_generator(height: '600', width: '400')
    end
  end
end

#   self.main_image ||= Placeholder.
#   self.thumb_image ||=Placeholder.image_generator(height: 350, width: 200)