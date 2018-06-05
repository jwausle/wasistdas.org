<template>
<v-app>
  <v-toolbar>
    <v-toolbar-title>Blockchain</v-toolbar-title>
    <v-spacer></v-spacer>
    <v-toolbar-items>
      <v-btn flat v-on:click="$router.push('/WasIstDas')">Was ist das</v-btn>
      <v-btn flat v-on:click="$router.push('/Vision')">Vision</v-btn>
      <v-btn flat v-on:click="$router.push('/Technologie')">Technologie</v-btn>
    </v-toolbar-items>
  </v-toolbar>
  <v-content>
    <v-container fluid>
        <v-layout row>
          <v-flex xs12 sm6 offset-sm3>
            <v-card>
              <v-card-media
                src="/static/blockchain.jpg"
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
  beforeMount () { this.$router.push('/WasIstDas') }
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
