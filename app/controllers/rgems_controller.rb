class RgemsController < ApplicationController
  def index
    gems = params[:gems]
    os   = params[:os]

    @rgem = Rgem.system_dependencies(gems, os)
    render json: @rgem
  end
end
