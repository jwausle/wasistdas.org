import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import WerIstDas from '@/components/WerIstDas'
import Enthusiast from '@/components/Enthusiast'
import FullstackDeveloper from '@/components/FullStackDeveloper'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home,
      children: [
        {
          path: '/wer_ist_das',
          name: 'WerIstDas',
          component: WerIstDas
        },
        {
          path: '/enthusiast',
          name: 'Enthusiast',
          component: Enthusiast
        },
        {
          path: '/fullstack_developer',
          name: 'FullstackDeveloper',
          component: FullstackDeveloper
        }
      ]
    }
  ]
})
