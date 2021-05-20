module ApplicationHelper
  def sign_in_check
    if current_user
      "Hi #{current_user.name} | ".html_safe + link_to 'Log out', destroy_user_session_path,
                                                          method: :delete.to_s.html_safe
    else

      link_to 'log in',
                 new_user_session_path.to_s.html_safe + ' | ' + link_to 'Sign up',
                                                                        new_user_registration_path.to_s.html_safe
    end
  end
end
