require 'rails_helper'

RSpec.describe "sections/new", type: :view do
  before(:each) do
    assign(:section, Section.new(
      :name => "MyString",
      :initials => "MyString",
      :status => 1,
      :observation => "MyText",
      :kind => 1
    ))
  end

  it "renders new section form" do
    render

    assert_select "form[action=?][method=?]", sections_path, "post" do

      assert_select "input[name=?]", "section[name]"

      assert_select "input[name=?]", "section[initials]"

      assert_select "input[name=?]", "section[status]"

      assert_select "textarea[name=?]", "section[observation]"

      assert_select "input[name=?]", "section[kind]"
    end
  end
end
