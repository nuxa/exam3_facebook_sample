module UsersHelper
  def isfriend?(user)
    user if current_user.friend.include?(user)
  end
end
