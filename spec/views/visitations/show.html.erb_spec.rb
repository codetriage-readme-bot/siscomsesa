require 'rails_helper'

RSpec.describe 'visitations/show', type: :view do
  before(:each) do
    @visitation = assign(:visitation, Visitation.create!(
                                        visitor: nil,
                                        user: nil,
                                        section: nil
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
