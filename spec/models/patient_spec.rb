require 'rails_helper'

RSpec.describe Patient, type: :model do

  it "has a name" do
  	person = Patient.new(name: "Jim")
  	expect(person).to have_attributes(:name => "Jim")
  end
end
