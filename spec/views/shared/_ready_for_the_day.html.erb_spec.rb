require 'rails_helper'

describe "shared/_ready_for_the_day.html.erb" do

  it "contains Get Ready for the Day" do
    render
<<<<<<< 7fad34b7e9a52e1c1cb820aa6f56d9f11477ec42
<<<<<<< 20329f9010030550283b7cd1db861881be317166
    expect(response).to have_text("Get Ready for the Day")
=======
    response.should have_text("Get Ready for the Day")
>>>>>>> merge conflict solved
=======
    expect(response).to have_text("Get Ready for the Day")
>>>>>>>  changed based on review
  end

  it "Know your Tools" do
    render
<<<<<<< 7fad34b7e9a52e1c1cb820aa6f56d9f11477ec42
<<<<<<< 20329f9010030550283b7cd1db861881be317166
    expect(response).to have_text("Know your Tools")
=======
    response.should have_text("Know your Tools")
>>>>>>> merge conflict solved
=======
    expect(response).to have_text("Know your Tools")
>>>>>>>  changed based on review
  end
end
