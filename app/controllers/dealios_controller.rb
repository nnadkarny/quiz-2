class DealiosController < ApplicationController

  def new
    @dealio = Dealio.new
  end

  def create
    @dealio = Dealio.create(dealio_params)
    redirect_to root_path
  end

  def show
    @dealio = Dealio.find(params[:id])
  end

  private

  def dealio_params
    params.require(:dealio).permit(:title, :description)
  end

end 
