require 'rails_helper'

RSpec.describe "sections/edit", type: :view do
  before(:each) do
    @section = assign(:section, Section.create!(
      :name => "MyString",
      :initials => "MyString",
      :status => 1,
      :observation => "MyText",
      :kind => 1
    ))
  end

  it "renders the edit section form" do
    render

    assert_select "form[action=?][method=?]", section_path(@section), "post" do

      assert_select "input[name=?]", "section[name]"

      assert_select "input[name=?]", "section[initials]"

      assert_select "input[name=?]", "section[status]"

      assert_select "textarea[name=?]", "section[observation]"

      assert_select "input[name=?]", "section[kind]"
    end
  end
end
