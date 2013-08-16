class ContactSharesController < ApplicationController
  def create
    ContactShare.create(params[:contact_share])
  end

  def destroy
    ContactShare.find(params[:id]).destroy
  end
end
