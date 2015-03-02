 class CustomFailure < Devise::FailureApp
  def route(scope)
    #return super unless [:worker, :employer, :user].include?(scope) #make it specific to a scope
     new_user_session_url(:subdomain => 'secure')
  end

  # You need to override respond to eliminate recall
  def respond
    if http_auth?
      http_auth
    else
      flash[:error] = I18n.t('login.errors.invalid')
      redirect_to root_url
    end
  end
end