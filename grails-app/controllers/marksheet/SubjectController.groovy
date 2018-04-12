package marksheet

import grails.plugin.springsecurity.annotation.Secured
@Secured('permitAll')
class SubjectController {


    def index() {
        redirect(action:'list')

    }

    def create(){

    }
    def insert(){
        def subject = new Subject(params)

        subject.save(flush:true)
        redirect(action: 'list')
    }
    def list(){
        def subjectList = Subject.list()
//        render(view: "list",model: [ulist:userList])
        [slist:subjectList]
    }
    def edit(){
        def id = params.id
        def originalSubject = User.get(id)
        [edit:originalSubject]
    }
    def update(){
        def id = params.id
        def originalSubject = Subject.get(id)
        originalSubject.subjectName = params.subjectName
        originalSubject.fullMarks= params.fullMarks
        originalSubject.passMarks = params.passMarks
        originalSubject.theoryMarks= params.theoryMarks
        originalSubject.practicalMarks= params.practicalMarks
        originalSubject.save(flush: true)
        redirect(action: 'list')
    }
    def delete(){
        def id = params.id
        def originalSubject = Subject.get(id)
        originalSubject.delete(flush: true)
        redirect(action: "list")
    }




}
