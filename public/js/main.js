$(function(){
  slideChapters();
  dayNight();
  fonts();


  function fonts() {
    $('#minusFont').click(function(){
      var fontSize = parseInt($("p").css("font-size"));
      fontSize = fontSize - 2 + "px";
      $("p").css({'font-size':fontSize});
    })
    $('#plusFont').click(function(){
      var fontSize = parseInt($("p").css("font-size"));
      fontSize = fontSize + 2 + "px";
      $("p").css({'font-size':fontSize});
    })
  }
  function slideChapters() {
    // target the odd chapters and start them off screen
    $('.slide:nth-child(odd)').css({
      position: 'relative',
      left: '-1000px'
    })
    // move the odd chapters into positions
    $('.slide:nth-child(odd)').animate({left:'0px'}, 1500)
    // target the even and move them off screen
    $('.slide:nth-child(even)').css({
      position: 'relative',
      left: '+1000px'
    })
    // move the even chapters back into screen
    $('.slide:nth-child(even)').animate({left:'0px'}, 1500)
  }
  function dayNight() {
    // setting the page to black on click
    $('#night').click(function(){
      $('body').css({
        backgroundColor: "black",
        color: "white"
      })
      $('.buttons').css({'borderColor': "white"})
      $('a').css({
        color: 'white',
        textDecoration: 'underline'
      })
      $('nav').css({
        color: 'white',
        textDecoration: 'underline'
      })
    })
    // setting the page to white
    $('#day').click(function(){
      $('body').css({
        backgroundColor: "white",
        color: "black"
      })
      $('.buttons').css({
        'borderColor': "black"
      })
      $('a').css({
        color: 'black'
      })
      $('nav').css({
        color: 'black'
      })
    })
  }

})
