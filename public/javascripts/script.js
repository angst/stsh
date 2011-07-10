$(function(){
  document.onkeypress = function(evt) {
     evt = evt || window.event;
     var charCode = evt.which || evt.keyCode;
     var charStr = String.fromCharCode(charCode);
     if (evt.keyCode == 119) {
       $("#wrapper").toggleClass("grid_on")
     };
  };
});
