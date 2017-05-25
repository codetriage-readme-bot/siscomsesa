require 'rails_helper'

RSpec.describe "post_graduations/new", type: :view do
  before(:each) do
    assign(:post_graduation, PostGraduation.new(
      :name => "MyString",
      :initials => "MyString",
      :seniority => 1,
      :status => "MyString"
    ))
  end

  it "renders new post_graduation form" do
    render

    assert_select "form[action=?][method=?]", post_graduations_path, "post" do

      assert_select "input[name=?]", "post_graduation[name]"

      assert_select "input[name=?]", "post_graduation[initials]"

      assert_select "input[name=?]", "post_graduation[seniority]"

      assert_select "input[name=?]", "post_graduation[status]"
    end
  end
end
