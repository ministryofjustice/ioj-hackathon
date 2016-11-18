require 'rails_helper'

RSpec.describe "appeals/show", type: :view do
  before(:each) do
    @appeal = assign(:appeal, Appeal.create!(
      :full_name => "Full Name",
      :solicitor_name => "Solicitor Name",
      :provider_acct_num => "Provider Acct Num"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Full Name/)
    expect(rendered).to match(/Solicitor Name/)
    expect(rendered).to match(/Provider Acct Num/)
  end
end
