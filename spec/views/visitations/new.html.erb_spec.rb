require 'rails_helper'

RSpec.describe 'visitations/new', type: :view do
  before(:each) do
    assign(:visitation, Visitation.new(
                          visitor: nil,
                          user: nil,
                          section: nil
    ))
  end

  it 'renders new visitation form' do
    render

    assert_select 'form[action=?][method=?]', visitations_path, 'post' do
      assert_select 'input[name=?]', 'visitation[visitor_id]'

      assert_select 'input[name=?]', 'visitation[user_id]'

      assert_select 'input[name=?]', 'visitation[section_id]'
    end
  end
end
