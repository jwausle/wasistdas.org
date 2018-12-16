import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import WasIstDas from '@/components/WasIstDas'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home,
      children: [
        {
          path: '/was_ist_das',
          name: 'WasIstDas',
          component: WasIstDas
        }
      ]
    }
  ]
})
