require 'rails_helper'

RSpec.describe 'visitations/edit', type: :view do
  before(:each) do
    @visitation = assign(:visitation, Visitation.create!(
                                        visitor: nil,
                                        user: nil,
                                        section: nil
    ))
  end

  it 'renders the edit visitation form' do
    render

    assert_select 'form[action=?][method=?]', visitation_path(@visitation), 'post' do
      assert_select 'input[name=?]', 'visitation[visitor_id]'

      assert_select 'input[name=?]', 'visitation[user_id]'

      assert_select 'input[name=?]', 'visitation[section_id]'
    end
  end
end
