require 'spec_helper'

describe User do

  before(:each) do
    @attr = {
        :username => "Example User",
        :email => "user@example.com",
        :password => "foobar",
        :password_confirmation => "foobar"
    }
  end

  it { should respond_to(:po_info) }

  it "should create a new instance given a valid attribute" do
    User.create!(@attr)
  end

  describe "po info" do

    #let(:user) { Factory(:user) }
    #let(:po_info) { Factory(:po_info, po_infoable_id: user.id, po_infoable_type: 'User') }
    before(:each) do
      @user = Factory(:user)
      @user.build_po_info
      @po_info = @user.po_info
    end

    subject { @user }

    it { should respond_to(:po_info) }
    its(:po_info) { should == @po_info }

    it "should destroy associated po info" do
      @user.destroy
      PoInfo.find_by_id(@po_info.id).should be_nil
    end
  end

  describe "username" do

    before(:each) do
      @user = Factory(:user)
    end

    it "should have a username attribute" do
      @user.should respond_to(:username)
    end
  end

  describe "passwords" do

    before(:each) do
      @user = User.new(@attr)
    end

    it "should have a password attribute" do
      @user.should respond_to(:password)
    end

    it "should have a password confirmation attribute" do
      @user.should respond_to(:password_confirmation)
    end
  end

  describe "password validations" do

    it "should require a password" do
      User.new(@attr.merge(:password => "", :password_confirmation => "")).
          should_not be_valid
    end

    it "should require a matching password confirmation" do
      User.new(@attr.merge(:password_confirmation => "invalid")).
          should_not be_valid
    end

    it "should reject short passwords" do
      short = "a" * 5
      hash = @attr.merge(:password => short, :password_confirmation => short)
      User.new(hash).should_not be_valid
    end

  end

  describe "password encryption" do

    before(:each) do
      @user = Factory(:user)
    end

    it "should have an encrypted password attribute" do
      @user.should respond_to(:encrypted_password)
    end

    it "should set the encrypted password attribute" do
      @user.encrypted_password.should_not be_blank
    end

  end

  it "should require an email address" do
    no_email_user = User.new(@attr.merge(:email => ""))
    no_email_user.should_not be_valid
  end

  it "should require an username" do
    no_username_user = User.new(@attr.merge(:username => ""))
    no_username_user.should_not be_valid
  end

  it "should accept valid email addresses" do
    addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
    addresses.each do |address|
      valid_email_user = User.new(@attr.merge(:email => address))
      valid_email_user.should be_valid
    end
  end

  it "should reject invalid email addresses" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
    addresses.each do |address|
      invalid_email_user = User.new(@attr.merge(:email => address))
      invalid_email_user.should_not be_valid
    end
  end

  it "should reject duplicate email addresses" do
    User.create!(@attr)
    user_with_duplicate_email = User.new(@attr)
    user_with_duplicate_email.username = "othername"
    user_with_duplicate_email.should_not be_valid
  end

  it "should reject duplicate usernames" do
    User.create!(@attr)
    user_with_duplicate_username = User.new(@attr)
    user_with_duplicate_username.email = "other@example.com"
    user_with_duplicate_username.should_not be_valid
  end

  it "should reject email addresses identical up to case" do
    upcased_email = @attr[:email].upcase
    User.create!(@attr.merge(:email => upcased_email))
    user_with_duplicate_email = User.new(@attr)
    user_with_duplicate_email.username = "other"
    user_with_duplicate_email.should_not be_valid
  end
end
