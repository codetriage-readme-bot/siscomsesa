require 'rails_helper'

RSpec.describe "sections/index", type: :view do
  before(:each) do
    assign(:sections, [
      Section.create!(
        :name => "Name",
        :initials => "Initials",
        :status => 2,
        :observation => "MyText",
        :kind => 3
      ),
      Section.create!(
        :name => "Name",
        :initials => "Initials",
        :status => 2,
        :observation => "MyText",
        :kind => 3
      )
    ])
  end

  it "renders a list of sections" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Initials".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
