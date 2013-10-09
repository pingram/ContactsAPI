class ContactSharesController < ApplicationController
  def create
    ContactShare.create(params[:contact_share])
    head :created
  end

  def destroy
    ContactShare.find(params[:id]).destroy
    head :ok
  end
end
