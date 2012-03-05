require 'spec_helper'

describe "Static pages" do

  subject { page }

	describe "content" do
		before :all do
			User.new(username: 'Test man', email: 'testing@man.net', password: 'secretpass', password_confirmation: 'secretpass').save!
		end

		after :all do
			User.find_by_username('Test man').destroy
		end

		before :each do
			visit new_user_session_path
			fill_in "Email",				with: 'testing@man.net'
			fill_in "Password",			with: 'secretpass'
			click_button "Login"
		end

		shared_examples_for "all static pages" do
		  it { should have_selector('title', text: full_title(page_title)) }
		end

		describe "Home page" do
		  before { visit root_path }

		  let(:page_title) { 'Home' }
			it_should_behave_like "all static pages"

			h2_values=['Login','Register']
		  h2_values.each do |value|
		  	it { should have_selector('h2', text: value) }
		  end
		end

		describe "Profile page" do
		  before { visit profile_path }

		  let(:page_title) { 'Profile' }
		  it_should_behave_like "all static pages"

			it { should have_selector('h2', text: 'Set info for Purchase Order') }

			label_values=['Name', 'Address', 'City', 'State', 'Zipcode', 'Country', 'Phone', 'Fax']
			label_values.each do |value|
		  	it { should have_selector('label', text: value) }
		  end
		end

		describe "Dashboard page" do
		  before { visit dashboard_path }

		  let(:page_title) { 'Dashboard' }
		  it_should_behave_like "all static pages"

		  td_values=['App ID', 'App Name', 'Price', 'Author', 'Buy Link', 'Number of downloads', 'Purchase Hits', 'Number of purchases']
			td_values.each do |value|
		  	it { should have_selector('td', text: value) }
		  end
		end

		describe "Add app page" do
		  before { visit add_path }

		  let(:page_title) { 'Add app' }
		  it_should_behave_like "all static pages"

		  label_values=['App Marketplace', 'Splunk credentials', 'App ID', 'Price', 'PO', 'Paypal']
			label_values.each do |value|
		  	it { should have_selector('label', text: value) }
		  end

			it { should have_link('Back') }
		end

		describe "Purchases page" do
		  before { visit purchases_path }

		  let(:page_title) { 'Purchases' }
		  it_should_behave_like "all static pages"

		  h2_values=['Price', 'Orders', 'Balance']
			h2_values.each do |value|
		  	it { should have_selector('h2', text: value) }
		  end
		end

		describe "Thank you page" do
		  before { visit thankyou_path }

		  let(:page_title) { 'Thank you' }
		  it_should_behave_like "all static pages"
		end

		describe "Error page" do
		  before { visit error_path }

		  let(:page_title) { 'Error' }
		  it_should_behave_like "all static pages"
		end

		describe "Paypal page" do
		  before { visit paypal_path }

		  let(:page_title) { 'Paypal' }
		  it_should_behave_like "all static pages"
		end

		describe "Purchase order page" do
		  before { visit purchaseorder_path }

		  let(:page_title) { 'Purchase order' }
		  it_should_behave_like "all static pages"
		end

		describe "Admin settings page" do
		  before { visit settings_path }

		  let(:page_title) { 'Admin settings' }
		  it_should_behave_like "all static pages"
		end

		describe "Buy it page" do
		  before { visit buyitlink_path }

		  let(:page_title) { 'Buy it' }
		  it_should_behave_like "all static pages"
		end
	end

	describe "register" do

    before { visit new_user_registration_path }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button "Register" }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
#      	user = Factory(:user)
        fill_in "Username",			with: 'username'
        fill_in "Email",				with: 'email@gmail.com'
        fill_in "Password",			with: 'password'
        fill_in "Password confirmation", with: 'password'
			end

      it "should create a user" do
        expect { click_button "Register" }.to change(User, :count).by(1)
      end
    end
  end
end
