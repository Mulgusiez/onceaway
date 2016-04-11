class RequestMailerPreview < ActionMailer::Preview
  def new_request
    RequestMailer.new_request
  end
end
