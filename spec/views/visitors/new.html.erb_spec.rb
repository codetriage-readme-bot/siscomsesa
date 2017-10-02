require 'rails_helper'

RSpec.describe 'visitors/new', type: :view do
  before(:each) do
    assign(:visitor, Visitor.new(
                       name: 'MyString',
                       register: 'MyString',
                       phone: 'MyString',
                       kind: 1
    ))
  end

  it 'renders new visitor form' do
    render

    assert_select 'form[action=?][method=?]', visitors_path, 'post' do
      assert_select 'input[name=?]', 'visitor[name]'

      assert_select 'input[name=?]', 'visitor[register]'

      assert_select 'input[name=?]', 'visitor[phone]'

      assert_select 'input[name=?]', 'visitor[kind]'
    end
  end
end
