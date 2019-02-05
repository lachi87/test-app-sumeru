class CreditcardController < ApplicationController
  before_action :set_cc, only: [:show, :update, :destroy]

  def index
    @ccs = Creditcard.all
    json_response(@ccs)
  end

  def create
    @cc = Creditcard.create!(cc_params)
    json_response(@cc, :created)
  end

  def show
    json_response(@cc)
  end

  def update
    @cc.update(cc_params)
    head :no_content
  end

  def destroy
    @cc.destroy
    head :no_content
  end

  private

  def cc_params
    params.permit(:cc_number, :cc_expiry, :cc_cvv2, :full_name)
  end

  def set_cc
    @cc = Creditcard.find(params[:cc_number])
  end
end
