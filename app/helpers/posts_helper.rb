module PostsHelper
	def show_name(post)
		if current_user
      "<p class='post-title'>posted by #{post.user.name}</p>".html_safe
  	end
	end
end
