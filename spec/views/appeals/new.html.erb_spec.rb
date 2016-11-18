require 'rails_helper'

RSpec.describe "appeals/new", type: :view do
  before(:each) do
    assign(:appeal, Appeal.new(
      :full_name => "MyString",
      :solicitor_name => "MyString",
      :provider_acct_num => "MyString"
    ))
  end

  it "renders new appeal form" do
    render

    assert_select "form[action=?][method=?]", appeals_path, "post" do

      assert_select "input#appeal_full_name[name=?]", "appeal[full_name]"

      assert_select "input#appeal_solicitor_name[name=?]", "appeal[solicitor_name]"

      assert_select "input#appeal_provider_acct_num[name=?]", "appeal[provider_acct_num]"
    end
  end
end
