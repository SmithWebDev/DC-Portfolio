class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource   
  include CurrentUserConcern
  include DefaultPageContent
  
  before_action :set_copyright

  def set_copyright
    @copyright = SmithViewTool::Renderer.copyright "Db Smith", "All Rights Reserved"  
  end
end



module SmithViewTool

end