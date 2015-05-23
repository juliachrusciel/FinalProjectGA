class AdminController < ApplicationController

  def home
    admin_authenticate!
  end

end
