class Portfolio < ApplicationRecord
  validates_presence_of :main_image, :title, :body, :thumb_image  

  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails")}
  # Ex:- scope :active, -> {where(:active => true)}
end
