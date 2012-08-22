require "spec_helper"
describe "Application" do
  describe "GET to /" do
    it "should respond with success" do
      get "/"
      last_response.should be_ok
    end
  end
end
