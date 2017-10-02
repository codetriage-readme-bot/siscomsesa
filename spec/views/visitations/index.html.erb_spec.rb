require 'rails_helper'

RSpec.describe 'visitations/index', type: :view do
  before(:each) do
    assign(:visitations, [
             Visitation.create!(
               visitor: nil,
               user: nil,
               section: nil
             ),
             Visitation.create!(
               visitor: nil,
               user: nil,
               section: nil
             )
           ])
  end

  it 'renders a list of visitations' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
