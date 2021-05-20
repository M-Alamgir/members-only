module PostsHelper
  def show_name(post)
    "<p class='post-title'>posted by #{post.user.name}</p>".html_safe if current_user
  end
end
