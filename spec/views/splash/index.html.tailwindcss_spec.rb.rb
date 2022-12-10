require 'rails_helper'

RSpec.describe 'splash/index.html.erb', type: :view do
  it 'renders the name of the app' do
    expect(rendered).to have_content('MyBudget')
    expect(rendered).to have_css('h1', text: 'MyBudget')
  end
end
