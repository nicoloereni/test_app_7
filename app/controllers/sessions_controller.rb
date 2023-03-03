# frozen_string_literal: true

class SessionsController < ApplicationController
  def new

  end

  def create
    u = User.find_by_email(params["session"]["email"])
    if u && u.authenticate(params["session"]['password'])
      session[:user_id] = u.id
      p session
      redirect_to u
    else
      render 'new'
    end
  end

  def destroy
  end
end
