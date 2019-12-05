Exams.App = class{
  constructor(){
    this.$exams = $("[data-exams='exams']")
    this.backend = new Exams.Backend(this.$exams.data().examsPatientId)
    this.gui = new Exams.Gui(this.$exams, this.backend)

  }

  start(){
    this.backend.fetchExams().then(this.gui.addExams.bind(this.gui)).catch(this.gui.responseErrorHandler)
  }
}