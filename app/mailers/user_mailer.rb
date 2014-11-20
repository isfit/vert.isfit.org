# encoding=utf-8
class UserMailer < ActionMailer::Base
  default from: "verter@isfit.org"

  def welcome_email(host)
  	@host = host
  	mail(:to => host.email, :subject => "Takk for at du vil bli ISFiT vert!")
  end
end

