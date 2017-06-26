require 'rails_helper'

RSpec.describe "branches/show", type: :view do
  before(:each) do
    @branch = assign(:branch, Branch.create!(
      :name => "Name",
      :number => "Number",
      :status => 2,
      :section => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
