require 'rails_helper'

RSpec.describe "teams/index.html.erb", type: :view do
  it "has a request.fullpath that is defined" do
      expect(controller.request.fullpath).to eq teams_path
  end
end
