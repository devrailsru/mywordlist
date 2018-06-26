class PagesController < ApplicationController

  def welcome
    if user_signed_in?
      redirect_to "/words"
    end
  end

end
