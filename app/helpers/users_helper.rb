module UsersHelper
  def isfriend?(user)
    toarray = []
    toarray << user
    if current_user.friend == toarray
      current_user.friend == toarray
    elsif current_user == user
      current_user == user
    end
  end
end
