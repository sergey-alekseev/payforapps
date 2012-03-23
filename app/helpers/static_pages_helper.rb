module StaticPagesHelper

  def resource_name
    user = User.where(:email => params[:email]).first()
    user = Admin.where(:email => params[:email]).first() if user.nil?

    user.nil? ? :user : user.class.name.parameterize.underscore.to_sym
  #  :user
  end

  def resource
    @resource ||= resource_name.to_s.camelize.constantize.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[resource_name]
  end

end
