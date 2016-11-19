class RgemsController < ApplicationController
  def index
    gems = params[:gems]
    os   = params[:os]

    @rgem = Rgem.system_dependencies(gems, os)

    render json: @rgem
  end

  def create
    gem_name     = params[:gem]
    os           = params[:os]
    dependencies = params[:dependencies]
    rgem         = Rgem.new(name: gem_name)

    dependencies.each do |dep|
      rgem.dependencies.build(name: dep, os_type: os)
    end

    rgem.save!

    render json: rgem, status: :created
  end
end
