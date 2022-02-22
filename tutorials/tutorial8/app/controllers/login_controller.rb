class LoginController < ApplicationController
  def handle_login
    email = "mtzl@gmail.com"
    password = "mtzl@2022"
    @login = false
    if(params["email"] == email && params["password"] == password)
      session[:email] = params["email"]
      @login = true
    elsif(params["email"] == "" || params["password"] == "")
      @error = "Please fill the informations!"
      render :index
    else(params["email"] != email || params["passwor"] != password )
      @error = "email or passwrod incorrect!"
      render :index
    end
  end

  def handle_logout
    session.delete(:email)
    @login = false
    redirect_to "/"
  end
end
