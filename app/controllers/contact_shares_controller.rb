class ContactSharesController < ApplicationController
  def create
    @share = ContactShare.create(params[:contact_share])
    render :json => @share
  end

  def destroy
    @share = ContactShare.find(params[:id])
    @share.destroy
    render :json => @share
  end
end
