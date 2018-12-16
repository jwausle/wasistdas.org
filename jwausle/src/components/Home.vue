<template>
<v-app>
  <v-toolbar>
    <v-toolbar-title>JWAUSLE</v-toolbar-title>
    <v-spacer></v-spacer>
    <v-toolbar-items>
      <v-btn flat v-on:click="$router.push('/wer_ist_das')">Wer ist das</v-btn>
      <v-btn flat v-on:click="$router.push('/fullstack_developer')">Full Stack Develop</v-btn>
      <v-btn flat v-on:click="$router.push('/enthusiast')">Enthusiast</v-btn>
      <v-btn flat v-on:click="$router.push('/enthusiast')">Vater</v-btn>
    </v-toolbar-items>
  </v-toolbar>
  <v-content>
    <v-container fluid>
        <v-layout row>
          <v-flex xs12 sm6 offset-sm3>
            <v-card>
              <v-card-media
                src="/static/docker-banner.png"
                height="300px"
              >
              </v-card-media>
              <!-- CONTENT CONTAINER -->
              <router-view/>
            </v-card>
          </v-flex>
        </v-layout>
    </v-container>
  </v-content>
  <v-footer class="pa-3">
    <v-spacer></v-spacer>
    <div>&copy; {{ new Date().getFullYear() }}</div>
  </v-footer>
</v-app>
</template>

<script>
export default {
  name: 'Home',
  data () {
    return {
      msg: 'Welcome to Your Vue.js Home'
    }
  },
  beforeMount () { this.$router.push('/wer_ist_das') }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
