require 'rails_helper'

RSpec.describe "post_graduations/index", type: :view do
  before(:each) do
    assign(:post_graduations, [
      PostGraduation.create!(
        :name => "Name",
        :initials => "Initials",
        :seniority => 2,
        :status => "Status"
      ),
      PostGraduation.create!(
        :name => "Name",
        :initials => "Initials",
        :seniority => 2,
        :status => "Status"
      )
    ])
  end

  it "renders a list of post_graduations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Initials".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
