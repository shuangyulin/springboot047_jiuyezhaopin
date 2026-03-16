const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootiv1oo/",
            name: "springbootiv1oo",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootiv1oo/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "大学生就业招聘系统"
        } 
    }
}
export default base
