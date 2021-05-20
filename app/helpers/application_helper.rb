module ApplicationHelper
  def sign_in_check
    if current_user
      "<p><span>Hi #{current_user.name} | </span>
      #{link_to 'Log out', destroy_user_session_path, method: :delete}</p>".html_safe
    else
      "<p>#{link_to 'log in', new_user_session_path}<span> | </span>
      #{link_to 'Sign up', new_user_registration_path}</p>".html_safe
    end
  end
end
