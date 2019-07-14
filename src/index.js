/* globals alert */
const loading = {
  show() {
      alert("Module loading is created sucessfully ")
  }
};


const meta = {
   loading: [{
    lowerCamelCaseName: 'show',
    args: []
  }]
};

function init(weex) {
  weex.registerModule('loading', loading, meta);
}

export default {
  init:init
}