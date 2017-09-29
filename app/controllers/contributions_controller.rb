class ContributionsController < ApplicationController
  def index
    @contributions = Contribution.all
  end
  
  def new
    @contribution = Contribution.new
  end

  def create
    @contribution = Contribution.create(contribution_params)
    redirect_to contributions_path
  end

  private
  
  def contribution_params
    params.require(:contribution).permit(:phone, :description, :amount, :image)
  end
end
