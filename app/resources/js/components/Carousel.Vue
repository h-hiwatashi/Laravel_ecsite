<template>
  <div class="main">

    <p>slick デフォルト ↓</p>
    <slick ref="slick" class="slick-outer">
      <div><img src="static/img/tokyost.jpg" class="slick-img">{{tokyo}}</div>
      <div><img src="static/img/osaka.jpg" class="slick-img">{{osaka}}</div>
      <div><img src="static/img/aso.jpg" class="slick-img">{{aso}}</div>
    </slick>

   <p>slick オプション指定 ↓</p>
   <slick ref="slick" :options="slickOptions" class="slick-outer">
      <div><img src="https://cdn.pixabay.com/photo/2016/07/21/11/17/mineral-water-1532300_1280.jpg" class="slick-img">{{sample1}}</div>
      <div><img src="https://images.unsplash.com/photo-1558160074-4d7d8bdf4256?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80" class="slick-img">{{sample2}}</div>
      <div><img src="https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80" class="slick-img">{{sample3}}</div>
   </slick>

  </div>
</template>

<script>
import Slick from 'vue-slick'
import '../../node_modules/slick-carousel/slick/slick.css'
export default {
  name: 'Main',
  data () {
    return {
      sample1: 'sample1',
      sample2: 'sample2',
      sample3: 'sample3',
      slickOptions:{
        arrows: false,
        autoplay: true,
        autoplaySpeed: 1000,
      }
    }
  },
  components: {
    Slick
  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

.slick-outer{
  width:80%;
  padding:10px;
  margin:auto;
    margin-bottom:10px;
    background-color:lightgray;
}
.slick-img{
  margin:auto;
  width:50%;
  height:250px;
}

@media(max-width:768px) {
.slick-img{
  margin:auto;
  width:50%;
  height:150px;
}
}
