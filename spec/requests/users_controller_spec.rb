require "rails_helper"

RSpec.describe "UsersControllers", type: :request do
  describe "GET /show" do
    it "renders a successfull response for show user (profile)" do
      user = User.create(user_name: "shrex", email: "sherx@email.com",
                         phone_number: "8374847", password: "password", password_confirmation: "password",
                         profile_picture: fixture_file_upload("/home/ahmed/Desktop/default.png", "image/png"))
      get user_url(user)
      expect(response).to be_successful
    end
  end
end
