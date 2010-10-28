class SecretsController < ApplicationController

  before_filter :authenticate_user!
  
  def index
    render :text => 'hello'
  end
end