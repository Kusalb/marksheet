package marksheet

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured

import javax.swing.Spring


class UserController {
    @Secured('permitAll')
    def index() {
        if(SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')){
            redirect(controller:"user",action:"home")
            return
        }else if(SpringSecurityUtils.ifAllGranted('ROLE_USER')){
            redirect(controller:"teacher",action:"list")
            return
        }else {
            redirect(controller: 'login',action: 'auth')
            return
        }

//        redirect(action:'list')
    }
    @Secured('permitAll')

    def home(){

    }
    def main(){
    }
@Secured('ROLE_ADMIN')
    def create(){}

    def register(){

    }
@Secured('ROLE_ADMIN')
    def login(){
        def user = new User(params)
        user.save(flush:true)
        UserRole.create(user,Role.findByAuthority('ROLE_USER'),true)
        redirect(action:'list')
    }
    @Secured('ROLE_ADMIN')

    def list(){
        def userList = User.list()
//        render(view: "list",model: [ulist:userList])
        [ulist:userList]
    }
    @Secured('ROLE_ADMIN')
    def edit(){
        def id = params.id
        def originalUser = User.get(id)
        [edit:originalUser]
    }
    @Secured('ROLE_ADMIN')
    def update(){
        def id = params.id
        def originalUser = User.get(id)
        originalUser.username = params.username
        originalUser.password = params.password
        originalUser.save(flush:true)
        redirect(action: 'list')
    }
    @Secured('ROLE_ADMIN')
    def delete(){
        def id = params.id
        def originalUser = User.get(id)
        originalUser.delete(flush: true)
        redirect(action: "list")
    }
}
