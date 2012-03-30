require 'spec_helper'

describe PoInfo do

  before(:each) do
    @attr = {
        :name => "Joe",
        :address => "Wall street",
        :city => "New York",
        :state => "NY",
        :zipcode => "10011",
        :country => "Wall street",
        :phone => "+12125551212",
        :fax => "212-995-4070"
    }
  end

  describe "owned by the user" do
    #let(:user) { Factory(:user) }
    #let(:po_info) { Factory(:po_info, po_infoable_id: user.id, po_infoable_type: 'User') }
    before(:each) do
      @user = Factory(:user)
      @user.build_po_info
      @user.po_info.update_attributes!(@attr)
      @po_info = @user.po_info
    end

    subject { @po_info }

    it { should be_valid }

    it { should respond_to(:name) }
    it { should respond_to(:address) }
    it { should respond_to(:city) }
    it { should respond_to(:state) }
    it { should respond_to(:zipcode) }
    it { should respond_to(:country) }
    it { should respond_to(:phone) }
    it { should respond_to(:fax) }
    it { should respond_to(:email) }
    it { should respond_to(:po_infoable) }
    it { should respond_to(:po_infoable_id) }
    it { should respond_to(:po_infoable_type) }

    its(:po_infoable) { should == @user }
    its(:email) { should == @user.email }

    describe "when po_infoable_id is not present" do
      before { @po_info.po_infoable_id = nil }
      it { should_not be_valid }
    end

    it "should be destroyed if parent user is destroyed" do
      destroyed_user = @po_info.po_infoable
      destroyed_user.destroy
      PoInfo.find_by_id(@po_info.id).should be_nil
    end
  end
end
