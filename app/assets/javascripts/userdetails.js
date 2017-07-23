




$(document).ready(function(){






      // Get the modal
var modal=  $('#myModal');

// Get the image and insert it inside the modal - use its "alt" text as a caption

var modalImg = $("#img01");
var captionText = $("#caption");






   $("#image").on("click" , function(){


        modal.css("display" , "block");
    modalImg.attr("src" , this.src)
    captionText.html(this.alt);
    modalImg.css("display" , "block");
    $("#form_show").html("");

   });

 


// Get the <span> element that closes the modal
var span = $('#close');

// When the user clicks on <span> (x), close the modal
span.on('click',function(){

  modal.css("display" , "none");
});





});







    

