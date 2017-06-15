class StaticPagesController < ApplicationController
  before_action :check_authenticated_user!
  layout 'static_pages'

  def homepage
  end

  private

  def check_authenticated_user!
    redirect_to posts_path if user_signed_in?
  end
end
