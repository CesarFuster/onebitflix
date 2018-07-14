<template>
 <v-layout row wrap justify-center>
  <v-flex xs12>
   <Featured :movie="featuredMovie"/>
  </v-flex>
 </v-layout>
</template>

<script>
 import Featured from './_featured.vue '

 // ------- Dados Fake apenas para testarmos o layout -------- //
 const featuredMovie = {
                         id: 1,
                         title: ' Criando uma API completa com Ruby
On Rails',
description: ' Saber como criar e consumir
API 's é fundamental para qualquer programador, então nessa pequena
série nós vamos ver o que é essencial para criar uma usando RoR.',
featured_thumbnail_url:
'https://onebitcode.com/wp-content/uploads/2018/05/bg-example.png'
                           }


 export default {
  data () {
   return {
       // ------- Dados Fake apenas para testarmos o layout
-------- //
      featuredMovie: featuredMovie,
    }
  },
  components: {
  Featured
  }
 }
<\/script>

<style scoped>
</style>
