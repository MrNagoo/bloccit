module PostsHelper
  def user_is_authorized_for_post?(post)
    current_user && (current_user == user.post || current_user.admin?)
  end
end
