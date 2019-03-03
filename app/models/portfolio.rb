class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :main_image, :title, :body, :thumb_image  

  def self.angular
    where(subtitle: "Angular") 
  end

  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails")}
  # Ex:- scope :active, -> {where(:active => true)}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: 600, width: 400)
    self.thumb_image ||=Placeholder.image_generator(height: 350, width: 200)
  end
end


