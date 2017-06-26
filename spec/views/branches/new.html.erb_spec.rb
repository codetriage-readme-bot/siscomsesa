require 'rails_helper'

RSpec.describe "branches/new", type: :view do
  before(:each) do
    assign(:branch, Branch.new(
      :name => "MyString",
      :number => "MyString",
      :status => 1,
      :section => nil
    ))
  end

  it "renders new branch form" do
    render

    assert_select "form[action=?][method=?]", branches_path, "post" do

      assert_select "input[name=?]", "branch[name]"

      assert_select "input[name=?]", "branch[number]"

      assert_select "input[name=?]", "branch[status]"

      assert_select "input[name=?]", "branch[section_id]"
    end
  end
end
