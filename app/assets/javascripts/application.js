// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap
//= require jquery
//= require jquery_ujs
//= require_tree .

document.addEventListener("turbolinks:load", function() {

$('#cours').change(function() {
  cour = this.value;
  str = $('#cours option:selected').text();
  acb = str.substring(str.length-1, str.length);
  typ = str.split(" ",2);
  typ_cours = typ[1].substring(0, 1);
  if (acb == '*') {
    $('#acb').css("display", "none");
    $('#no_acb').css("display", "inline");
    $('#ville').append(str.split(" ",1));
  }
  else {
    $('#acb').css("display", "inline");
    $('#no_acb').css("display", "none");
  }
  if (typ_cours == 'E') {
    $('#cours_en').css("display", "inline");
    $('#cours_ad').css("display", "none");
  }
  else {
    $('#cours_ad').css("display", "inline");
    $('#cours_en').css("display", "none");
  }
});

});