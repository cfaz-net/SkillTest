# frozen_string_literal: true

RSpec.describe 'Calculus::MaxillaryDepthAngle' do
  describe '.call' do
    context 'maxillary_depth_angle' do
      it 'when angle is greater than 90' do
        point_n = Point.new(x: 632.698, y: 292.369)
        point_a = Point.new(x: 626.272, y: 563.035)
        point_po = Point.new(x: 163.245, y: 417.157)
        point_or = Point.new(x: 567.222, y: 415.854)

        return_value = Calculus::MaxillaryDepthAngle.call(point_n, point_a, point_po, point_or)
        expect(return_value).to be_within(0.01).of(88.45)
      end
    end
  end
end
