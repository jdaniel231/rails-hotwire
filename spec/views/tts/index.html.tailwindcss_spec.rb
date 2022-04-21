require 'rails_helper'

RSpec.describe "tts/index", type: :view do
  before(:each) do
    assign(:tts, [
      Tt.create!(
        name: "Name",
        status: "",
        description: "Description",
        message: "MyText",
        id_company: "",
        holiday: ""
      ),
      Tt.create!(
        name: "Name",
        status: "",
        description: "Description",
        message: "MyText",
        id_company: "",
        holiday: ""
      )
    ])
  end

  it "renders a list of tts" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
