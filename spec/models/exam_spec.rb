require 'rails_helper'

valid_attributes = {
  patient_id: 1
}

RSpec.describe Exam, type: :model do
  context "validate presence of" do
    [:patient_id].each do |field|
      it "#{field} is required" do
        exam = Exam.new(valid_attributes.except(field))
        expect(exam).not_to be_valid
      end
    end
  end

  describe "maxillary_depth_angle" do
    it "when angle is greater than 90" do
      patient = Patient.create(name: "Mark")
      e = Exam.new(
        point_n: Point.new(x: 632.698, y: 292.369),
        point_a: Point.new(x: 626.272, y: 563.035),
        point_po: Point.new(x: 163.245, y: 417.157),
        point_or: Point.new(x: 567.222, y: 415.854),
        patient: patient
      )
      expect(e.maxillary_depth_angle).to be_within(0.01).of(88.45)
    end

    it "when angle is smaller than 90" do
      patient = Patient.create(name: "Mark")
      e = Exam.new(
        point_n: Point.new(x: 632.698, y: 292.369),
        point_a: Point.new(x: 647.253, y: 561.886),
        point_po: Point.new(x: 163.245, y: 417.157),
        point_or: Point.new(x: 567.222, y: 415.854),
        patient: patient
      )
      expect(e.maxillary_depth_angle).to be_within(0.01).of(92.90)
    end
  end
end
