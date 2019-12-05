require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
        :name => "Name"
      ),
      Patient.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of patients" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
