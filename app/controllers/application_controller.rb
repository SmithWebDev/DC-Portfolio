class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource   
  include CurrentUserConcern
  include DefaultPageContent
  
  before_action :set_copyright

  def set_copyright
    @copyright = SmithTreatmentViewTool::Renderer.copyright "The Smith Treatment", "All Rights Reserved"  
  end
end



module SmithTreatmentViewTool
  class Renderer
    def self.copyright name, msg
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end