require 'net/http'
require 'net/https'
require 'uri'

class ContributionsController < ApplicationController
  def index
    @contributions = Contribution.all
    
    @pay = params[:id]
  end
  
  def new
    @contribution = Contribution.new
  end

  def create
    @contribution = Contribution.create(contribution_params)
    redirect_to contributions_path
  end

  def update
        
  end
  
  """
  # Authenticate application
  def payment
    CONSUMER_KEY    = Rails.application.secrets.safaricom_key
    CONSUMER_SECRET = Rails.application.secrets.safaricom_secret

    uri = URI('https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials')
    
    Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https', :verify_mode => OpenSSL::SSL::VERIFY_NONE)
    
   
    do |http|
      request = Net::HTTP::Get.new uri.request_uri
      request.basic_auth CONSUMER_KEY, CONSUMER_SECRET
      
      response = http.request request # Net::HTTPResponse object
      
      puts response
      puts response.body
    end

  end
  """


  private
  
  def contribution_params
    params.require(:contribution).permit(:phone, :description, :amount, :image)
  end
end
