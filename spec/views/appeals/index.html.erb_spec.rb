require 'rails_helper'

RSpec.describe "appeals/index", type: :view do
  before(:each) do
    assign(:appeals, [
      Appeal.create!(
        :full_name => "Full Name",
        :solicitor_name => "Solicitor Name",
        :provider_acct_num => "Provider Acct Num"
      ),
      Appeal.create!(
        :full_name => "Full Name",
        :solicitor_name => "Solicitor Name",
        :provider_acct_num => "Provider Acct Num"
      )
    ])
  end

  it "renders a list of appeals" do
    render
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitor Name".to_s, :count => 2
    assert_select "tr>td", :text => "Provider Acct Num".to_s, :count => 2
  end
end
