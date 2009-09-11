class LedgersController < ApplicationController

  before_filter :date_convert

  def index
    @ledgers = Ledger.find :all, :order => 'date desc'
    @ledger = Ledger.new(:date => Date.today)
  end

  def create
    Ledger.create(params[:ledger])
    redirect_to ledgers_url
  end

  def update
    @ledger = Ledger.find params[:id]
    @ledger.update_attributes(params[:ledger])
    @ledger.save
  end

  def destroy
    Ledger.destroy params[:id]
    redirect_to ledgers_url
  end

  def date_convert
    unless params[:ledger].nil? or params[:ledger][:date].nil?
      params[:ledger][:date]  = params[:ledger][:date].to_date 
    end
  end

end
