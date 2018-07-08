# class friend
class Friend
  def greeting(friend_name = '')
    if friend_name.empty?
      'Hello!'
    else
      "Hello, #{friend_name}!"
    end
  end
end
