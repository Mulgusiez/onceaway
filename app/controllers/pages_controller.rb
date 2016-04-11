class PagesController < ApplicationController
  def home
  end

  def send_request
    RequestMailer.new_request(params).deliver_now
    flash[:notice] = "Votre demande est envoyée"
    render :home
  end
end
