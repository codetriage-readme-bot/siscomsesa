require 'rails_helper'

RSpec.describe 'visitors/edit', type: :view do
  before(:each) do
    @visitor = assign(:visitor, Visitor.create!(
                                  name: 'MyString',
                                  register: 'MyString',
                                  phone: 'MyString',
                                  kind: 1
    ))
  end

  it 'renders the edit visitor form' do
    render

    assert_select 'form[action=?][method=?]', visitor_path(@visitor), 'post' do
      assert_select 'input[name=?]', 'visitor[name]'

      assert_select 'input[name=?]', 'visitor[register]'

      assert_select 'input[name=?]', 'visitor[phone]'

      assert_select 'input[name=?]', 'visitor[kind]'
    end
  end
end
