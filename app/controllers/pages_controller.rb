class PagesController < ApplicationController
  expose(:plans){Plan.where(:active =>true).where("paypal_id != ''").order("monthy_price ASC")}
  before_filter :redirect_if_logged_in
  def index
    #redirect_to "/users"
  end
  def login
    render :layout => 'user_login'
  end

  def error
    render :layout => 'login'
  end

  def test
    render :layout => false
  end
  def sign_up
    s = Subscription.new
    s.payer_id = params[:payer_id]
    s.subscr_id = params[:subscr_id]
    s.first_name = params[:first_name]
    s.last_name = params[:last_name]
    s.item_name = params[:item_name]
    s.amount1 = params[:amount1]
    s.amount3 = params[:amount3]
    s.recurring = params[:recurring]
    s.payer_status = params[:payer_status]
    s.payer_email = params[:payer_email]
    s.reattempt = params[:reattempt]
    s.item_number = params[:item_number]
    s.subscr_date = params[:subscr_date]
    s.btn_id = params[:btn_id]
    s.charset = params[:charset]
    s.period1 = params[:period1]
    s.mc_amount1 = params[:mc_amount1]
    s.period3 = params[:period3]
    s.mc_amount3 = params[:mc_amount3]
    s.auth = params[:auth]
    s.key = rand(36**200).to_s(36)
    s.save
    redirect_to new_user_registration_path(:s => s.key)
  end
  private
  def redirect_if_logged_in
    if user_signed_in?
      flash[:notice] = 'You must sign out first!'
      redirect_to users_dashboard_path
    end
  end
end

