# frozen_string_literal: true

# Rails controller for ContactV17 form page
class ContactController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:save]

  # Controller method to render contact form page
  def index
    redirect_to('/contact')
  end

  # Controller method to save user data
  def save
    params.permit!
    params_hash = params.to_h

    # Tell the UserMailer to send a welcome email after save
    UserMailer.with(params: params_hash).welcome_email.deliver

    # TEST form values gets rendered to controller method
    redirect_to('/404')
  end
end
