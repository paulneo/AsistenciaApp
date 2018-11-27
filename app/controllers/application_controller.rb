class ApplicationController < ActionController::Base

  before do
    authenticate_user!
  end
end
