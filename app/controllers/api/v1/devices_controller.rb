class Api::V1::DevicesController < ApiController


  def index 
    render json: {"hello": "yes"}
  end
  
  def create
    @device = Device.new(new_device_params)

    if @device.save
      render json: @device
    else
      render json: {error: @device.errors}
    end
  end



  private 

  def new_device_params
    params.require(:device).permit(:uuid)
  end
end