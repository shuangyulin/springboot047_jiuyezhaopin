import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import qiye from '@/views/modules/qiye/list'
    import zhaopinxinxi from '@/views/modules/zhaopinxinxi/list'
    import yaoqingmianshi from '@/views/modules/yaoqingmianshi/list'
    import yonghu from '@/views/modules/yonghu/list'
    import gangweifenlei from '@/views/modules/gangweifenlei/list'
    import zaixianliuyan from '@/views/modules/zaixianliuyan/list'
    import qiuzhixinxi from '@/views/modules/qiuzhixinxi/list'
    import gangweishenqing from '@/views/modules/gangweishenqing/list'
    import config from '@/views/modules/config/list'
    import users from '@/views/modules/users/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/qiye',
        name: '企业',
        component: qiye
      }
      ,{
	path: '/zhaopinxinxi',
        name: '招聘信息',
        component: zhaopinxinxi
      }
      ,{
	path: '/yaoqingmianshi',
        name: '邀请面试',
        component: yaoqingmianshi
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/gangweifenlei',
        name: '岗位分类',
        component: gangweifenlei
      }
      ,{
	path: '/zaixianliuyan',
        name: '在线留言',
        component: zaixianliuyan
      }
      ,{
	path: '/qiuzhixinxi',
        name: '求职信息',
        component: qiuzhixinxi
      }
      ,{
	path: '/gangweishenqing',
        name: '岗位申请',
        component: gangweishenqing
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/users',
        name: '管理员',
        component: users
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
