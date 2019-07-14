import Vue from 'vue';

import weex from 'weex-vue-render';

import Loading from '../src/index';

weex.init(Vue);

weex.install(Loading)

const App = require('./index.vue');
App.el = '#root';
new Vue(App);
