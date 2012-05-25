/*

var formelements
$(document).ready(function() {
  //$(':submit').bind('click', function() {
      
  //});
  
  //Hijacks form
  $("form").bind('submit', function(e) {

      e.preventDefault();
      e.returnValue = false;
      var caller = e.target || e.srcElement;
      if (caller.id == "user"){
        alert("Register new user");
      }
      if (caller.id == "registration"){
        alert("Register new vote");
      }

      

      
  });

});

*/