# frozen_string_literal: true

class Exam < ApplicationRecord
  belongs_to :patient

  belongs_to :point_po, class_name: 'Point', foreign_key: 'point_po_id', dependent: :destroy
  belongs_to :point_or, class_name: 'Point', foreign_key: 'point_or_id', dependent: :destroy
  belongs_to :point_a, class_name: 'Point', foreign_key: 'point_n_id', dependent: :destroy
  belongs_to :point_n, class_name: 'Point', foreign_key: 'point_a_id', dependent: :destroy

  accepts_nested_attributes_for :point_po
  accepts_nested_attributes_for :point_or
  accepts_nested_attributes_for :point_n
  accepts_nested_attributes_for :point_a

  def maxillary_depth_angle
    if point_po.x.nil? || point_po.y.nil? || point_or.x.nil? || point_or.y.nil? || point_n.x.nil? || point_n.y.nil? || point_a.x.nil? || point_a.y.nil?
      return nil
    end

    Calculus::MaxillaryDepthAngle.call(point_n, point_a, point_po, point_or)
  end
end
