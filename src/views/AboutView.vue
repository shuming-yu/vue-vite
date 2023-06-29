<template>
  <div class="about">
    <h1>This is an about page</h1>
  </div>
</template>

<script setup>
  import { inject } from 'vue';
  import $axios from 'axios';

  console.log(import.meta.env.VITE_PATH);
  console.log(import.meta.env.VITE_TEXT);

  $axios.get('https://randomuser.me/api/')
        .then(res=>{
          console.log(res.data);
        })

</script>

<style>
@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>
