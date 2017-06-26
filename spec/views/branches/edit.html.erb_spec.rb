require 'rails_helper'

RSpec.describe "branches/edit", type: :view do
  before(:each) do
    @branch = assign(:branch, Branch.create!(
      :name => "MyString",
      :number => "MyString",
      :status => 1,
      :section => nil
    ))
  end

  it "renders the edit branch form" do
    render

    assert_select "form[action=?][method=?]", branch_path(@branch), "post" do

      assert_select "input[name=?]", "branch[name]"

      assert_select "input[name=?]", "branch[number]"

      assert_select "input[name=?]", "branch[status]"

      assert_select "input[name=?]", "branch[section_id]"
    end
  end
end
