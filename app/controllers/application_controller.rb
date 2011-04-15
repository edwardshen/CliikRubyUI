class ApplicationController < ActionController::Base
  protect_from_forgery

private

def after_sign_out_path_for(resource_or_scope)
    home_url
end

def after_sign_in_path_for(resource_or_scope)
    home_url
end

end
