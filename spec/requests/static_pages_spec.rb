require 'spec_helper'

describe "StaticPages" do

	let(:base_title){"Ruby on Rails Tutorial Sample App"}

	describe "GET /static_pages" do
		it "works! (now write some real specs)" do
			# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
			get static_pages_home_path
			response.status.should be(200)
		end
	end

	describe "Home page" do
		before { visit root_path }

		it { expect(page).to have_content('Sample App') }
		it { expect(page).to have_title(full_title('')) }
		it { expect(page).not_to have_title('| Home') }
	end

	describe "Help page" do
		before { visit help_path }

		it { expect(page).to have_content('Help') }
		it { expect(page).to have_title(full_title('Help')) }
	end
	
	describe "About page" do
		before { visit about_path }

		it { expect(page).to have_content('About') }
		it { expect(page).to have_title(full_title('About Us')) }
	end

	describe "Contact page" do
		before { visit contact_path }

		it { expect(page).to have_content('Contact') }
		it { expect(page).to have_title(full_title('Contact')) }
	end
end