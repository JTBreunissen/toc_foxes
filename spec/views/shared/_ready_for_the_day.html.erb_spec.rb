require 'rails_helper'

describe "shared/_ready_for_the_day.html.erb" do

  it "contains Get Ready for the Day" do
    render
<<<<<<< 20329f9010030550283b7cd1db861881be317166
    expect(response).to have_text("Get Ready for the Day")
=======
    response.should have_text("Get Ready for the Day")
>>>>>>> merge conflict solved
  end

  it "Know your Tools" do
    render
<<<<<<< 20329f9010030550283b7cd1db861881be317166
    expect(response).to have_text("Know your Tools")
=======
    response.should have_text("Know your Tools")
>>>>>>> merge conflict solved
  end
end
