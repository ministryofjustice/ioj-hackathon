require 'rails_helper'

RSpec.describe "appeals/edit", type: :view do
  before(:each) do
    @appeal = assign(:appeal, Appeal.create!(
      :full_name => "MyString",
      :solicitor_name => "MyString",
      :provider_acct_num => "MyString"
    ))
  end

  it "renders the edit appeal form" do
    render

    assert_select "form[action=?][method=?]", appeal_path(@appeal), "post" do

      assert_select "input#appeal_full_name[name=?]", "appeal[full_name]"

      assert_select "input#appeal_solicitor_name[name=?]", "appeal[solicitor_name]"

      assert_select "input#appeal_provider_acct_num[name=?]", "appeal[provider_acct_num]"
    end
  end
end
