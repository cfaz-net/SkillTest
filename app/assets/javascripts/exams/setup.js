window.Exams = {}

$( document ).on('turbolinks:load', function() {
  if($("[data-exams]").length > 0){
    Exams.app = new Exams.App()
    Exams.app.start()
  }
})