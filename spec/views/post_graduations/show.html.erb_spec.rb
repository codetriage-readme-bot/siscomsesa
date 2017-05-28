require 'rails_helper'

RSpec.describe 'post_graduations/show', type: :view do
  before(:each) do
    @post_graduation = assign(:post_graduation, PostGraduation.create!(
                                                  name: 'Name',
                                                  initials: 'Initials',
                                                  seniority: 2,
                                                  status: 'Status'
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Initials/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Status/)
  end
end
