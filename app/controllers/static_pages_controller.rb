class StaticPagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  def index
  end

  def profile
    @user = current_user
    @user.build_po_info# if @user.po_info.nil?

    if @user.update_with_password(params[:user])
      if is_navigational_format?
        if @user.respond_to?(:pending_reconfirmation?) && @user.pending_reconfirmation?
          flash_key = :update_needs_confirmation
        end
        set_flash_message :notice, flash_key || :updated
      end
      sign_in :user, @user, :bypass => true
      respond_with @user, :location => after_update_path_for(@user)
    else
      clean_up_passwords @user
      respond_with @user
    end
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
