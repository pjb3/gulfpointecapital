class ContactController < ApplicationController
  def create
    ContactMailer.contact(params).deliver
    redirect_to thank_you_path
  end
end
