module UsersHelper
  def isfriend?(user)
    toarray = []
    toarray << user
    current_user.friend == toarray
  end
end
