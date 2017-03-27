class BlahblahsController < ApplicationController

  def index
    @dealios = Dealio.all
  end
  
end
