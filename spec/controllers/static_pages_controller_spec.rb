require 'spec_helper'

describe StaticPagesController do

		shared_examples_for "all valid actions" do
			it "returns http success" do
		    get action
		    response.should be_success
		  end
		end
		
		shared_examples_for "all invalid actions" do
			it "doesn't return http success" do
		    get action
		    response.should_not be_success
		  end
		end

	describe "signed in user" do
		before (:each) do
		  @user = Factory(:user)
		  sign_in @user
		end

		describe "GET 'profile'" do
		  let(:action) { 'profile' }
			it_should_behave_like "all valid actions"
		end

		describe "GET 'dashboard'" do
			let(:action) { 'dashboard' }
			it_should_behave_like "all valid actions"
		end

		describe "GET 'add'" do
			let(:action) { 'add' }
			it_should_behave_like "all valid actions"
		end

		describe "GET 'purchases'" do
			let(:action) { 'purchases' }
			it_should_behave_like "all valid actions"
		end

		describe "GET 'thankyou'" do
			let(:action) { 'thankyou' }
			it_should_behave_like "all valid actions"
		end

		describe "GET 'error'" do
			let(:action) { 'error' }
			it_should_behave_like "all valid actions"
		end

		describe "GET 'paypal'" do
			let(:action) { 'paypal' }
			it_should_behave_like "all valid actions"
		end

		describe "GET 'purchaseorder'" do
			let(:action) { 'purchaseorder' }
			it_should_behave_like "all valid actions"
		end

		describe "GET 'posubmit'" do
			let(:action) { 'posubmit' }
			it_should_behave_like "all valid actions"
		end

	  describe "GET 'settings'" do
			let(:action) { 'settings' }
			it_should_behave_like "all valid actions"
		end

		describe "GET 'buyitlink'" do
			let(:action) { 'buyitlink' }
			it_should_behave_like "all valid actions"
		end
  end

  describe "not signed in user" do
		shared_examples_for "all invalid user actions that cause redirect" do
			it "redirect to login" do
		    get action
		    response.should redirect_to(new_user_session_path)
		  end
		end

		describe "GET 'profile'" do
		  let(:action) { 'profile' }
			it_should_behave_like "all invalid user actions that cause redirect"
		end

		describe "GET 'dashboard'" do
			let(:action) { 'dashboard' }
			it_should_behave_like "all invalid user actions that cause redirect"
		end

		describe "GET 'add'" do
			let(:action) { 'add' }
			it_should_behave_like "all invalid user actions that cause redirect"
		end

		describe "GET 'purchases'" do
			let(:action) { 'purchases' }
			it_should_behave_like "all invalid user actions that cause redirect"
		end

		describe "GET 'thankyou'" do
			let(:action) { 'thankyou' }
			it_should_behave_like "all invalid user actions that cause redirect"
		end

		describe "GET 'error'" do
			let(:action) { 'error' }
			it_should_behave_like "all invalid user actions that cause redirect"
		end

		describe "GET 'paypal'" do
			let(:action) { 'paypal' }
			it_should_behave_like "all invalid user actions that cause redirect"
		end

		describe "GET 'purchaseorder'" do
			let(:action) { 'purchaseorder' }
			it_should_behave_like "all invalid user actions that cause redirect"
		end

		describe "GET 'posubmit'" do
			let(:action) { 'posubmit' }
			it_should_behave_like "all invalid user actions that cause redirect"
		end

		describe "GET 'settings'" do
			let(:action) { 'settings' }
			it_should_behave_like "all invalid actions"
		end

		describe "GET 'buyitlink'" do
			let(:action) { 'buyitlink' }
			it_should_behave_like "all invalid actions"
		end
  end
  
  # admin
  describe "signed in admin" do
		before (:each) do
		  @admin = Factory(:admin)
		  sign_in @admin
		end

		describe "GET 'profile'" do
		  let(:action) { 'profile' }
			it_should_behave_like "all invalid actions"
		end

		describe "GET 'dashboard'" do
			let(:action) { 'dashboard' }
			it_should_behave_like "all invalid actions"
		end

		describe "GET 'add'" do
			let(:action) { 'add' }
			it_should_behave_like "all invalid actions"
		end

		describe "GET 'purchases'" do
			let(:action) { 'purchases' }
			it_should_behave_like "all invalid actions"
		end

		describe "GET 'thankyou'" do
			let(:action) { 'thankyou' }
			it_should_behave_like "all invalid actions"
		end

		describe "GET 'error'" do
			let(:action) { 'error' }
			it_should_behave_like "all invalid actions"
		end

		describe "GET 'paypal'" do
			let(:action) { 'paypal' }
			it_should_behave_like "all invalid actions"
		end

		describe "GET 'purchaseorder'" do
			let(:action) { 'purchaseorder' }
			it_should_behave_like "all invalid actions"
		end

		describe "GET 'posubmit'" do
			let(:action) { 'posubmit' }
			it_should_behave_like "all invalid actions"
		end

		describe "GET 'settings'" do
			let(:action) { 'settings' }
			it_should_behave_like "all invalid actions"
		end

		describe "GET 'buyitlink'" do
			let(:action) { 'buyitlink' }
			it_should_behave_like "all invalid actions"
		end
  end

  describe "not signed in admin" do
		shared_examples_for "all invalid admin actions that cause redirect" do
			it "redirect to login" do
		    get action
		    response.should redirect_to(new_admin_session_path)
		  end
		end

		describe "GET 'settings'" do
			let(:action) { 'settings' }
			it_should_behave_like "all invalid actions"
		end
  end


end
