require 'rails_helper'

describe "shared/_ready_for_the_day.html.erb" do

  it "contains Get Ready for the Day" do
    render
    expect(response).to have_text("Get Ready for the Day")
  end

  it "Know your Tools" do
    render
    expect(response).to have_text("Know your Tools")
  end
end
