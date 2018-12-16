import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import WasIstDas from '@/components/WasIstDas'
import Tools from '@/components/Tools'
import Daemon from '@/components/Daemon'
import Image from '@/components/Image'
import Container from '@/components/Container'
import Dockerfile from '@/components/Dockerfile'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home,
      children: [
        {
          path: '/docker-was-ist-das',
          name: 'WasIstDas',
          component: WasIstDas
        },
        {
          path: '/docker-dockerfile',
          name: 'Dockerfile',
          component: Dockerfile
        },
        {
          path: '/docker-tools',
          name: 'Tools',
          component: Tools
        },
        {
          path: '/docker-image',
          name: 'Image',
          component: Image
        },
        {
          path: '/docker-container',
          name: 'Container',
          component: Container
        },
        {
          path: '/docker-daemon',
          name: 'Daemon',
          component: Daemon
        }
      ]
    }
  ]
})
