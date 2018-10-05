class SessionsController < ApplicationController
  def new
  end
  
  def create
  user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #if user.activated? #このメソッドは、引数に渡された文字列 (パスワード) をハッシュ化した値と、データベース内にあるpassword_digestカラムの値を比較します
        log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        redirect_to user
      #else
        #message  = "Account not activated. "
        #message += "Check your email for the activation link."
        #flash[:warning] = message
        #redirect_to root_url
      #end
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
   
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
