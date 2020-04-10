class ApplicationController < ActionController::API
   
     #include ExceptionHandler  
     #include HttpAcceptLanguage::AutoLocale
     include Response 
     before_action :authenticate_request, :set_current_user
     attr_reader :current_user
      
     private  
   
     def authenticate_request     
       # auth_token 存進 header 
       user = AuthorizeApiRequest.call(request.headers).result 
       @current_user = user #User.find(1)   
       render json: { error: 'Not Authorized' }, status: 401 unless @current_user
     end   

     def set_current_user 
       @userId = @current_user  
       User.find_by(id: @userId)
     end
     
end