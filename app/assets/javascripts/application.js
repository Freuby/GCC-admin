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

var city;
var code;

document.addEventListener("turbolinks:load", function() {

// -- panier -- Affichage bouton Régler Commandes quand sélection paiement

$("#mode_paie").click(function(event) {
   $("#submit").css("display", "inline");
});

// -- Com_batigrado -- Controle champs nom prenom et grupo

$("#subevent").click(function(event) {
    if ( !$("#resp_nom").val() && !$("#resp_prenom").val() ) {
        alert("Les champs nom et prénom sont obligatoires");
        event.preventDefault();
    }
    if ( $("#resp_nom_grupo_autre").is(":checked") ) {
        if ( !$("#resp_grupo").val() ) {
            alert("Vous devez noter le nom de votre groupe de capoeira");
            event.preventDefault();
        }
    }
});

// -- Com_batigrado -- Affichage de taille pantalon quand demande changt grade

$("#com_batigrado_gradup").change(function () {
    if ( $("#com_batigrado_gradup").is(":checked")) {
        $("#taillepant").css('display', 'block');
    }
    else {
        $("#taillepant").css('display', 'none');
    }
});

// -- Com_batigrado -- Affichage id batiasso qd 2 batigrados associés

$("#com_batigrado_bati2").change(function () {
    if ($("#com_batigrado_bati2").is(":checked")) {
        $("#batiasso").css('display', 'block');
    }
    else {
        $("#batiasso").css('display', 'none');
    }
});

// -- Com_batigrado -- Affichage id soiree qd particip repas

$("#com_batigrado_soiree").change(function () {
    if ($("#com_batigrado_soiree").is(":checked")) {
        $("#soirpay").css('display', 'block');
    }
    else {
        $("#soirpay").css('display', 'none');
    }
});

// -- Com_batigrado -- Affichage id asoiree qd particip repas bati associe

$("#asoiree").change(function () {
    if ($("#asoiree").is(":checked")) {
        $("#assosoirpay").css('display', 'block');
    }
    else {
        $("#assosoirpay").css('display', 'none');
    }
});
// -- Formulaire elefe --

$('#code').change().codePostal(function (cities) {
      if(cities.length) {
        $('#city').empty();
        $('#city').append(cities.map(function (entry) {
          return "<option>"+entry.city+"</option>";
        }));
      } else {
        $('#city').val('');
      }
});


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
    $('#mairie').attr('checked', 'checked');
    $('#mairie').css("display", "none");
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

// clic sur thumb produits

$('.thumbprod').click(function() {
    var saveSrc = $(this).attr('src');
    $('.mediumprod img').attr('src', saveSrc);
});

});