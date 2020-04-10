class AuthenticationController < ApplicationController
    skip_before_action :authenticate_request, only: [:authenticate] 
    
    def index   
      json_response(current_user)     
    end  
 
    def authenticate 
      command = AuthenticateUser.call(params[:email], params[:password]) 
      if command.success?
        #回傳 auth_token
        render json: { auth_token: command.result }    
      else
        render json: { error: command.errors }, status: :unauthorized
      end
    end 
 
    def show   
      #@user = User.find_by(id: current_user.id)
      @user = User.find_by(id: 1) 
      render json: @user
    end   

end