require 'rails_helper'

RSpec.describe 'visitors/show', type: :view do
  before(:each) do
    @visitor = assign(:visitor, Visitor.create!(
                                  name: 'Name',
                                  register: 'Register',
                                  phone: 'Phone',
                                  kind: 2
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Register/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/2/)
  end
end
