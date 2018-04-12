package marksheet

import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class ClassSubjectController {


    def index() {
        redirect(action:'list')
    }
    def create(){}
    def insert(){

        def classSubject = new ClassSubject()
        classSubject.classId = Integer.parseInt(params.classId)
        classSubject.subject = Subject.findBySubjectName(params.subject)
        classSubject.save(flush:true)
        redirect(action:'list')

    }
    def list(){
        def classSubjectList = ClassSubject.list()
//        render(view: "list",model: [ulist:userList])
        [clist:classSubjectList]

    }
    def edit(){
        def id = params.id
        def originalClassSubject = ClassSubject.get(id)
        [edit:originalClassSubject]
    }
    def update(){
        def id = params.id
        def originalClassSubject = ClassSubject.get(id)
        originalClassSubject.classId = params.classId
        originalClassSubject.subject= params.subject
        originalClassSubject.save(flush: true)
        redirect(action: 'list')
    }
    def delete(){
        def id = params.id
        def originalClassSubject = ClassSubject.get(id)
        originalClassSubject.delete(flush: true)
        redirect(action: "list")
    }

}
