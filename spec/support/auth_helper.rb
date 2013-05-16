module AuthHelper
  def http_login
    user = 'big'
    pw = 'boss'
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user,pw)
  end
end