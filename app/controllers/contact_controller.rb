# frozen_string_literal: true

# Rails controller for ContactV17 form page
class ContactController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:save]

  # Controller method to render contact form page
  def index
    redirect_to('/contact')
  end

  # Controller method to create user data
  def new
    @user = User.new
  end

  # Controller method to save user data
  def save
    @user = User.new(user_params)

    # Tell the UserMailer to send a welcome email after save
    UserMailer.with(user: @user).welcome_email.deliver

    # Redirect to same form page
    redirect_to('/contact')
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.permit(:first_name, :last_name, :email, :phone, :message)
  end
end
