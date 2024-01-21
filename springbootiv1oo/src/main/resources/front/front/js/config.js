
var projectName = '大学生就业招聘系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
]


var indexNav = [

{
	name: '招聘信息',
	url: './pages/zhaopinxinxi/list.html'
}, 
{
	name: '求职信息',
	url: './pages/qiuzhixinxi/list.html'
}, 

]

var adminurl =  "http://localhost:8080/springbootiv1oo/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"企业","menuJump":"列表","tableName":"qiye"}],"menu":"企业管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"岗位分类","menuJump":"列表","tableName":"gangweifenlei"}],"menu":"岗位分类管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"招聘信息","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"岗位申请","menuJump":"列表","tableName":"gangweishenqing"}],"menu":"岗位申请管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"在线留言","menuJump":"列表","tableName":"zaixianliuyan"}],"menu":"在线留言管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"求职信息","menuJump":"列表","tableName":"qiuzhixinxi"}],"menu":"求职信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"邀请面试","menuJump":"列表","tableName":"yaoqingmianshi"}],"menu":"邀请面试管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"管理员","tableName":"users"}],"menu":"管理员管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看","岗位申请","在线留言"],"menu":"招聘信息列表","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息模块"},{"child":[{"buttons":["查看","邀请面试"],"menu":"求职信息列表","menuJump":"列表","tableName":"qiuzhixinxi"}],"menu":"求职信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"岗位申请","menuJump":"列表","tableName":"gangweishenqing"}],"menu":"岗位申请管理"},{"child":[{"buttons":["查看"],"menu":"在线留言","menuJump":"列表","tableName":"zaixianliuyan"}],"menu":"在线留言管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"求职信息","menuJump":"列表","tableName":"qiuzhixinxi"}],"menu":"求职信息管理"},{"child":[{"buttons":["查看"],"menu":"邀请面试","menuJump":"列表","tableName":"yaoqingmianshi"}],"menu":"邀请面试管理"}],"frontMenu":[{"child":[{"buttons":["查看","岗位申请","在线留言"],"menu":"招聘信息列表","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息模块"},{"child":[{"buttons":["查看","邀请面试"],"menu":"求职信息列表","menuJump":"列表","tableName":"qiuzhixinxi"}],"menu":"求职信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"招聘信息","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息管理"},{"child":[{"buttons":["查看","审核"],"menu":"岗位申请","menuJump":"列表","tableName":"gangweishenqing"}],"menu":"岗位申请管理"},{"child":[{"buttons":["查看","审核"],"menu":"在线留言","menuJump":"列表","tableName":"zaixianliuyan"}],"menu":"在线留言管理"},{"child":[{"buttons":["查看"],"menu":"邀请面试","menuJump":"列表","tableName":"yaoqingmianshi"}],"menu":"邀请面试管理"}],"frontMenu":[{"child":[{"buttons":["查看","岗位申请","在线留言"],"menu":"招聘信息列表","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息模块"},{"child":[{"buttons":["查看","邀请面试"],"menu":"求职信息列表","menuJump":"列表","tableName":"qiuzhixinxi"}],"menu":"求职信息模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"是","hasFrontRegister":"否","roleName":"企业","tableName":"qiye"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
