

// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.noty.packaged.min.js
//= require_tree .


$(document).ready(function(){

      $("#aboutsite  div:gt(0)").hide(); //first show only gt(0) greater than 0

setInterval(function() { 
  $("#aboutsite  div:first-child")
    .fadeOut(0) //gayab ho rha h
    .next() //next div
    .fadeIn(1000) // aarha h
    .end() // move pointer back to top
     .appendTo('#aboutsite'); //move to last
},  4000);

})


