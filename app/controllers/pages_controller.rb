class PagesController < ApplicationController
  def home
  end

  def send_request
    RequestMailer.new_request(params).deliver_now
    flash[:notice] = "Votre demande de rêve a bien été envoyée, je vous recontacte trés vite"
    redirect_to root_path
  end
end
