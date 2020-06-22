module PortfoliosHelper
  def image_generator(height:, width:)
    "http://via.placeholder.com/#{height}x#{width}"
  end

  def portfolio_img(portfolio, type)
    image = portfolio.main_image || portfolio.thumb_image if portfolio
    return image.url if image
    # Port
    if type == "thumb"
      image_generator(height: "350", width: "200")
    else
      image_generator(height: "600", width: "400")
    end
  end
end

#   self.main_image ||= Placeholder.
#   self.thumb_image ||=Placeholder.image_generator(height: 350, width: 200)
