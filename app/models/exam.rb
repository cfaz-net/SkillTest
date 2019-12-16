class Exam < ApplicationRecord
  belongs_to :patient

  belongs_to :point_po, class_name: "Point", :foreign_key => 'point_po_id', dependent: :destroy
  belongs_to :point_or, class_name: "Point", :foreign_key => 'point_or_id', dependent: :destroy
  belongs_to :point_a, class_name: "Point", :foreign_key => 'point_n_id', dependent: :destroy
  belongs_to :point_n, class_name: "Point", :foreign_key => 'point_a_id', dependent: :destroy

  accepts_nested_attributes_for :point_po
  accepts_nested_attributes_for :point_or
  accepts_nested_attributes_for :point_n
  accepts_nested_attributes_for :point_a

  def maxillary_depth_angle
    angle1 = Math.atan2((self.point_po.y - self.point_or.y), (self.point_po.x - self.point_or.x))
    angle2 = Math.atan2((self.point_n.y - self.point_a.y), (self.point_n.x - self.point_a.x))
    mda = angle2 - angle1
    if self.point_po.x.nil? or self.point_po.y.nil? or self.point_or.x.nil? or self.point_or.y.nil? or self.point_n.x.nil? or self.point_n.y.nil? or self.point_a.x.nil? or self.point_a.y.nil?
      return nil
    else
      return mda
    end
  end
end
