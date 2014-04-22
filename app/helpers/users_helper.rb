module UsersHelper
	 # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, params = {})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, height: params[:size].to_s, width: params[:size].to_s, class: "gravatar")
  end
end
