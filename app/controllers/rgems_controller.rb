class RgemsController < ApplicationController
  before_action :set_rgem, only: [:show, :update, :destroy]

  def index
    gems = params[:gems]
    os   = params[:os]

    @rgem = Rgem.includes(:dependencies)
                .where(name: gems, 'dependencies.os_type' => os)

    render json: @rgem
  end

  def create
    @rgem = Rgem.create!(rgem_params)

    render json: @rgem, status: :created, location: @rgem
  end

  def update
    @rgem.update!(rgem_params)

    render json: @rgem
  end

  def destroy
    @rgem.destroy
  end

  private

  def set_rgem
    @rgem = Rgem.find(params[:id])
  end

  def rgem_params
    params.require(:rgem).permit(:name)
  end
end
