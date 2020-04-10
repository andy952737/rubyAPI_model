class V2::PublicController < ApplicationController
 
    def index 
        render json: { message: "public ok" }
    end    

end