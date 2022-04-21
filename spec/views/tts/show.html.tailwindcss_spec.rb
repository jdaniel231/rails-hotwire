require 'rails_helper'

RSpec.describe "tts/show", type: :view do
  before(:each) do
    @tt = assign(:tt, Tt.create!(
      name: "Name",
      status: "",
      description: "Description",
      message: "MyText",
      id_company: "",
      holiday: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
