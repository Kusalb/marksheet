package marksheet

import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')

class MarksController {

    def index() {
        redirect(action:'list')
    }
    def create(){}
    def insert(){

        def marks = new Marks()
        marks.student = Student.findByFirstName(params.student)
        marks.subject = Subject.findBySubjectName(params.subject)
        marks.obtainedMarks = Double.parseDouble(params.obtainedMarks)

        marks.save(flush:true)
        redirect(action:'list')

    }
    def list(){
        def marksList = Marks.list()
//        render(view: "list",model: [ulist:userList])
        [mlist:marksList]

    }
    def edit(){
        def id = params.id
        def originalMarks = Marks.get(id)
        [edit:originalMarks]
    }
    def update(){
        def id = params.id
        def originalMarks = Marks.get(id)
        originalMarks.subject = params.subject
        originalMarks.student= params.student
        originalMarks.obtainedMarks= params.obtainedMarks

        originalMarks.save(flush: true)
        redirect(action: 'list')
    }
    def delete(){
        def id = params.id
        def originalMarks = Marks.get(id)
        originalMarks.delete(flush: true)
        redirect(action: "list")
    }
}
