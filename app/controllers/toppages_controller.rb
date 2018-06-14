class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @task = current_user.tasks.build
      @tasks = Task.all.page(params[:page]).per(3)
    end
  end
end
