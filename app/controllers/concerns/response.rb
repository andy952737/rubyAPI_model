module Response 
  #ALL Json
  def json_response(object, status = :ok)
    render json: object, status: status
  end
  # def json_serialized(object, status = :ok, serializer)
  #   render json: object, status: status, serializer: serializer
  # end
end  
  