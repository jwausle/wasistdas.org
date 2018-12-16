import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import WasIstDas from '@/components/WasIstDas'
import Vision from '@/components/Vision'
import Technologie from '@/components/Technologie'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home,
      children: [
        {
          path: '/blockchain-analogie-stille-post',
          name: 'WasIstDas',
          component: WasIstDas
        },
        {
          path: '/blockchain-vision',
          name: 'Vision',
          component: Vision
        },
        {
          path: '/blockchain-technologie',
          name: 'Technologie',
          component: Technologie
        }
      ]
    }
  ]
})
