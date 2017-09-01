module ApplicationHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def authenticate!
    redirect_to new_session_url unless logged_in?
  end

  def user_topics(user_params)
  	attributes = user_params
  	topics = []
 	topics << attributes[:topic1]
 	topics << attributes[:topic2]
 	topics << attributes[:topic3]
 	topics
  end
end
