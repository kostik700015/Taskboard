class PagesController < ApplicationController
  def home
    if current_user && current_user.role
      redirect_to tasks_path
    end
  end
end
