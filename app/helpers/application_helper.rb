module ApplicationHelper
  def login_helper style = " "  #Creation of Ruby Method for ease of use, DRY, and scalability
    if current_user.is_a?(GuestUser)
      (link_to  "Register", new_user_registration_path, class: style) + " ".html_safe +
      (link_to  "Login",    new_user_session_path, class: style)
    else
      (link_to  "Logout", destroy_user_session_path, method: :delete, class: style)
    end
  end

  def source_helper(layout_name) #Creation of standard method to pass in an argument based on the helper.
    if session[:source] 
      greeting = "Thanks for visiting me from
      #{session[:source]} and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")
    end 
  end

  def copyright_generator
    SmithViewTool::Renderer.copyright 'Smith', "All Rights Reserved"
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_path,
        title: 'About Me'
      },
      {
        url: contact_path,
        title: 'Contact'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: portfolios_path,
        title: 'Portfolio'
      },
    ]
  end
  def nav_helper style, tag_type
    nav_links = ''
    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end
    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end
end
