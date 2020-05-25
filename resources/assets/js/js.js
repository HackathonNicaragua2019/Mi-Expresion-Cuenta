// change this if you want
var duration = (12000);

var wait = setTimeout(completeLoad, duration);

function completeLoad() {
  var wrapper = document.getElementById('loading-wrapper'),
      elements = document.querySelectorAll('div[class^="loading-"]');
  for (var el of elements) {
    wrapper.removeChild(el);
  }
  wrapper.className = 'post-load-wrapper';
}
