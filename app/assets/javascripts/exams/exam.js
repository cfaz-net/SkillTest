Exams.Exam = class{
  constructor(json){
    this.patientId = json.patient_id
    this.id = json.id
    this.po = { x: json.point_po.x, y: json.point_po.y }
    this.or = { x: json.point_or.x, y: json.point_or.y }
    this.n = { x: json.point_n.x, y: json.point_n.y }
    this.a = { x: json.point_a.x, y: json.point_a.y }
    this.angle = json.maxillary_depth_angle
  }
}