class StaticPagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
	def index
	end

  def profile
    @user=current_user
  end

  def dashboard
  end

  def add
  end

  def purchases
  end

  def thankyou
  end

  def error
  end

  def paypal
  end

  def purchaseorder
  end

  def posubmit
  end

  def settings
  end

  def buyitlink
  end
end
