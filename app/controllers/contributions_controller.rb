class ContributionsController < ApplicationController
  def index
  end
  
  def new
    @contribution = Contribution.new
  end
end
