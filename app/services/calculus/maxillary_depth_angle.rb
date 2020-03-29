# frozen_string_literal: true

module Calculus
  # Class responsible for calculating the jaw depth angle
  class MaxillaryDepthAngle < ApplicationService
    attr_reader :point_n, :point_a, :point_po, :point_or

    def initialize(point_n, point_a, point_po, point_or)
      @point_n = point_n
      @point_a = point_a
      @point_po = point_po
      @point_or = point_or
    end

    def call
      calculate_angle_in_degrees
    end

    private

    def calculate_angle_in_degrees
      (Math.atan(tangent) * (360.0 / (2.0 * Math::PI))).round(3)
    end

    # Calculating using straigth equation
    def tangent
      m1 = angular_coefficient(point_n, point_a)
      m2 = angular_coefficient(point_po, point_or)
      ((m1 - m2) / (1 + (m1 * m2))).abs
    end

    def angular_coefficient(point1, point2)
      (point2.y - point1.y) / (point2.x - point1.x)
    end
  end
end
