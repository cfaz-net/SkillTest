Exams.Backend = class{
  constructor(patientId){
    this.patientId = patientId
  }

  fetchExams(){
    return fetch(`/patients/${this.patientId}/exams`).then((response) => response.json())
  }

  newPath(){
    return `/patients/${this.patientId}/exams/new`
  }

  editPath(examId){
    return `/patients/${this.patientId}/exams/${examId}/edit`
  }
}