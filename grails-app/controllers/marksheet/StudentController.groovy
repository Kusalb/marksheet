package marksheet

import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')


class StudentController {

    def index() {
        redirect(action:'create')
    }
    def create(){

    }
    def register(){
        def student = new Student(params)
        student.save(flush:true)
        redirect(action:'list')
    }
    @Secured(['ROLE_USER','ROLE_ADMIN'])

    def list(){
        def id = params.id
        if(id == '0'){
            def student = new Student()
            def studentList = Student.findAllWhere(classId: params.classId)

            [slist:studentList]
        }
        else{
            def studentList = Student.list()
//        render(view: "list",model: [ulist:userList])
            [slist:studentList]
        }

    }
    def edit(){
        def id = params.id
        def originalStudent = Student.get(id)
        [edit:originalStudent]
    }

    def update(){
        def id = params.id
        def originalStudent = Student.get(id)
        originalStudent.firstName = params.firstName.toString()
        originalStudent.lastName = params.lastName
        originalStudent.rollNo = Integer.parseInt(params.rollNo)
        originalStudent.address = params.address
        originalStudent.email = params.email
        originalStudent.classId = params.classId
        originalStudent.sectionId = params.sectionId
        originalStudent.save(flush: true)
        redirect(action: 'list')
    }
    def delete(){
        def id = params.id
        def originalStudent = Student.get(id)
        originalStudent.delete(flush: true)
        redirect(action: "list")
    }
}
