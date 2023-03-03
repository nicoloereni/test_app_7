module ApplicationHelper
  def gravatar_for(user)
    if user
      image_tag("https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email || "franco@franco.net")}?s=200", alt: user.username || "franco")
    end
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logged_in?
    !!current_user
  end
end
