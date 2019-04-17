module ApplicationHelper
  def login_helper  #Creation of Ruby Method for ease of use, DRY, and scalability
    if current_user.is_a?(User)
      link_to  "Logout", destroy_user_session_path, method: :delete
    else
      (link_to  "Register", new_user_registration_path) +
      "<br>".html_safe +
      (link_to  "Login",    new_user_session_path)
    end
  end

  def source_helper(layout_name) #Creation of standard method to pass in an argument based on the helper.
    if session[:source] 
      greeting = "Thanks for visiting me from
       #{session[:source]} and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")
    end 
  end
end
