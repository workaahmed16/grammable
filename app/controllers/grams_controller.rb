class GramsController < ApplicationController
  def index
    
  end
  
  def new
    @gram = Gram.new
  end
  
  def create
    @gram = Gram.create(gram_param)
    redirect_to root_path
  end
  
  private
  
  def gram_param
    params.require(:gram).permit (:message)
  end
end
