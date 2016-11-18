class RgemsController < ApplicationController
  def index
    gems = params[:gems]
    os   = params[:os]

    @rgem = Rgem.includes(:dependencies)
                .where(name: gems, 'dependencies.os_type' => os)

    render json: @rgem
  end
end
