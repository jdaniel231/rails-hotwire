require 'rails_helper'

RSpec.describe "tts/edit", type: :view do
  before(:each) do
    @tt = assign(:tt, Tt.create!(
      name: "MyString",
      status: "",
      description: "MyString",
      message: "MyText",
      id_company: "",
      holiday: ""
    ))
  end

  it "renders the edit tt form" do
    render

    assert_select "form[action=?][method=?]", tt_path(@tt), "post" do

      assert_select "input[name=?]", "tt[name]"

      assert_select "input[name=?]", "tt[status]"

      assert_select "input[name=?]", "tt[description]"

      assert_select "textarea[name=?]", "tt[message]"

      assert_select "input[name=?]", "tt[id_company]"

      assert_select "input[name=?]", "tt[holiday]"
    end
  end
end
