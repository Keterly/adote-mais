$(function(){

    $(".link-s").on("click", function(e){
        e.preventDefault()
        var id = $(this).attr("href") 
        var d = $(id).offset().top 
        $("body, html").animate({scrollTop: d - 100}, 900)
    })
    
    $("#lista button").on("click", function(){
        $("#lista ul").slideToggle(100);
    })
})

