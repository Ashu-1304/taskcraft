class HiresController < ApplicationController
  def create
    @hire  = Hire.new(hire_params)
    if @hire.save
      render json: @hire,status: :ok
    else
      render json: {error: @hire.errors.full_messages},status: :unprocessable_entity
    end
  end

  private
  def hire_params
    params.require(:hire).permit(:full_name,:mobile_number,:email,:message,:response)
  end
end
