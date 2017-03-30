require 'rails_helper'

describe "shared/_host_next_toc.html.erb" do
  it "contains content" do
    render
    rendered.should have_text("Host next TOC")
    rendered.should have_text("Talk to us")
    rendered.should have_text("Submit")


  end
end
