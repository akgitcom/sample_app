require 'spec_helper'

describe "UserPages" do
	subject { page }
  # describe "GET /user_pages" do
  #   it "works! (now write some real specs)" do
  #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #     get user_pages_index_path
  #     response.status.should be(200)
  #   end
  # end
  

  describe "signup page" do
    before { visit signup_path }

    it { expect(page).to have_content('Sign up') }
    it { expect(page).to have_title(full_title('Sign up')) }
  end
end
