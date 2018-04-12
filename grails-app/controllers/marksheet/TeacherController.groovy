package marksheet

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class TeacherController {

    def index() {
        redirect(action:'list')
    }
    def create(){}
    def insert(){

        def teacher = new Teacher()
        teacher.teacherName = params.teacherName
        teacher.teacherAddress = params.teacherAddress
        teacher.subject = Subject.findBySubjectName(params.subject)
        teacher.save(flush:true)
        redirect(action:'list')

    }
    def list(){
        def id = params.id
        if(id=='assign'){
            def teacherList = Teacher.list()
            [tlist:teacherList]
        }else{
            def teacherList = Teacher.list()
//        render(view: "list",model: [ulist:userList])
            [tlist:teacherList]

        }


    }
    def edit(){
        def id = params.id
        def originalTeacher = Teacher.get(id)
        [edit:originalTeacher]
    }
    def update(){
        def id = params.id
        def originalTeacher = Teacher.get(id)
        originalTeacher.teacherName = params.teacherName
        originalTeacher.teacherAddress= params.teacherAddress
        originalTeacher.subject = params.subjectPracticalMarks
        originalTeacher.save(flush: true)
        redirect(action: 'list')
    }
    def delete(){
        def id = params.id
        def originalTeacher = Teacher.get(id)
        originalTeacher.delete(flush: true)
        redirect(action: "list")
    }
    def assign(){
    }
    def set() {
        def classTeacher = new TeacherSubject()
        classTeacher.teacher= Teacher.findByTeacherName(params.teacher)
        classTeacher.classSubject = Subject.findBySubjectName(params.classSubject)
//        teacherSubject.classSubject = Subject.findAllBySubjectName(params.classSubject).toString()
////        def classId= ClassSubject.findAllByClassId()
//        teacherSubject.classSubject= ClassSubject.findAllBySubject (params.classSubject).toString()
////        teacherSubject.classSubject = ClassSubject.findAllBySubject(params.classSubject)
        classTeacher.save(flush:true)
        redirect (action: "list")

    }


}
