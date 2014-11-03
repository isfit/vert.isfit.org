# encoding=utf-8
class UserMailer < ActionMailer::Base
  default from: "vert@isfit.org"

  def welcome_email(host)
  	@host = host
  	mail(:to => host.email, :subject => "Takk for din søknad som ISFiT vert!")
  end
end

