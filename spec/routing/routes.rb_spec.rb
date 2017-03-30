require 'rails_helper'

describe "routing to admin pages" do
  it "routes /admin/attend to admin/attend#index" do
    expect(get: "/admin/attend").to route_to(
    controller: "admin/attend",
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
