require 'rails_helper'

RSpec.describe 'visitors/index', type: :view do
  before(:each) do
    assign(:visitors, [
             Visitor.create!(
               name: 'Name',
               register: 'Register',
               phone: 'Phone',
               kind: 2
             ),
             Visitor.create!(
               name: 'Name',
               register: 'Register',
               phone: 'Phone',
               kind: 2
             )
           ])
  end

  it 'renders a list of visitors' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Register'.to_s, count: 2
    assert_select 'tr>td', text: 'Phone'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
  end
end
