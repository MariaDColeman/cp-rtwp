<template>
  <span>
    <div class="card-deck">
      <div class="card">
        <div class="card-body">
          <p class="card-text">This application was created using the following</p>
          <ul class="list-group">
            <li class="list-group-item">
              <a target="_blank" href="https://vuejs.org/" title="Vue.js framework">
                <img src="../assets/vue.svg" height="50" alt="Vue.js" /> Vue.js
              </a>
            </li>
            <li class="list-group-item">
              <a target="_blank" href="https://bootstrap-vue.org/" title="Bootstrap-Vue plugins">
                <img src="../assets/bootstrap-vue.png" height="55" alt="Bootstrap-Vue" /> Bootstrap Vue
              </a>
            </li>
            <li class="list-group-item">
              <a target="_blank" href="https://coreui.io/docs/getting-started/introduction" title="CoreUI theme">
                <img src="../assets/coreui.png" height="65" alt="core-ui" /> CoreUI theme
              </a>
            </li>
            <li class="list-group-item">
              <a target="_blank" href="https://vue2-leaflet.netlify.app/" title="Vue Leaflet">
                <img src="../assets/vue-leaflet.png" height="50" alt="vue-leaflet" class="mr-1" /> Vue Leaflet
              </a>
            </li>
            <li class="list-group-item">
              <a target="_blank" href="https://github.com/highcharts/highcharts-vue" title="Highcharts">
                <img src="../assets/highcharts.png" height="60" alt="highcharts-vue" class="mr-2" /> Highcharts-vue
              </a>
            </li>
          </ul>
        </div>
      </div>
      <div class="card">
        <div class="card-body">
          <h4 class="card-title">Runtime frameworks</h4>
          <p class="card-text">This application source is deployable on</p>
          <ul class="list-group">
            <li class="list-group-item">
              <a target="_blank" href="https://cloudplatform.sap.com" title="SAP Cloud Platform">
                <img src="../assets/sap.png" height="45" alt="SAP Cloud Platform" /> SAP Cloud Platform
              </a>
            </li>
            <li class="list-group-item">
              <a target="_blank" href="https://nodejs.org" title="nodejs development application">
                <img src="../assets/nodejs.svg" height="55" alt="nodejs" class="ml-2 mr-2" /> nodejs dev application
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <router-view></router-view>
  </span>
</template>

<script>
export default {
  name: 'AppAbout'
}
</script>