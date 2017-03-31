require 'rails_helper'

describe "routing to admin pages" do
  it "routes /admin/event to admin/event#index" do
    expect(get: "/admin/event").to route_to(
    controller: "admin/event",
    action: "index"
)

  end
  it "routes /admin/sponsor to admin/sponsor#index" do
    expect(get: "/admin/sponsor").to route_to(
    controller: "admin/sponsor",
      action: "index"
)
  end
end
