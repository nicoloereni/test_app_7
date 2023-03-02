module ApplicationHelper
  def gravatar_for(user)
    image_tag("https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}?s=200", alt: user.username)
  end
end
