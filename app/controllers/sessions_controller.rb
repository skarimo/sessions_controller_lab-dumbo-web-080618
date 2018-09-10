class SessionsController < ApplicationController
  def new
  end

  def create
    # byebug
    if !params[:name].blank?
        session[:name] = params[:name]
        redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    if !session[:name].blank?
      session.delete :name
    end
    redirect_to '/sessions/new'
  end


end
