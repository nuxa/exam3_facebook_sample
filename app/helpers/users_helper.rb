module UsersHelper
  def isfriend?(user)
    if current_user.friend.include?(user)
      user
    elsif current_user == user
      current_user == user
    end
  end
end
