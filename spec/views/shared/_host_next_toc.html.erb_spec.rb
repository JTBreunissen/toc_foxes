require 'rails_helper'

describe "shared/_host_next_toc.html.erb" do
  it "contains content" do
    render
    expect(response).to have_text("Host next TOC")
    expect(response).to have_text("Talk to us")
    expect(response).to have_text("Submit")
  end
end
