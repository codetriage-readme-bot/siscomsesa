require 'rails_helper'

RSpec.describe 'post_graduations/edit', type: :view do
  before(:each) do
    @post_graduation = assign(:post_graduation, PostGraduation.create!(
                                                  name: 'MyString',
                                                  initials: 'MyString',
                                                  seniority: 1,
                                                  status: 0
    ))
  end

  it 'renders the edit post_graduation form' do
    render

    assert_select 'form[action=?][method=?]', post_graduation_path(@post_graduation), 'post' do
      assert_select 'input[name=?]', 'post_graduation[name]'

      assert_select 'input[name=?]', 'post_graduation[initials]'

      assert_select 'input[name=?]', 'post_graduation[seniority]'
    end
  end
end
