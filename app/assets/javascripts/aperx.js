(function () {

  'use strict'

  window.Aperx = {}


  // Up-to-date Cross-Site Request Forgery token
  Aperx.csrfToken = function() {
    return $('meta[name=csrf-token]').attr('content');
  }

  // URL param that must contain the CSRF token
  Aperx.csrfParam = function() {
    return $('meta[name=csrf-param]').attr('content');
  }

})()

