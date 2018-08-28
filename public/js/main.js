$(function(){


  slideChapters();
  dayNight();
  fonts();

  // loop over all the a tags with class link
  $('.link').each(function(){
    // get the injected href from ruby
    // save it to variable
    var link = $(this).attr('href')
    // get this a tags parent slide/browser
    // add onclick
    $(this).parents('.slide').click(function(){
      // redirect the users page to the correct page
      document.location.replace("/"+link)
    })
  })

  function fonts() {
    // add on clikc to div with id minusfont
    $('#minusFont').click(function(){
      // get the current paragprah font size
      var fontSize = parseInt($("p").css("font-size"));
      // decrease the paragraph fontsize
      fontSize = fontSize - 2 + "px";
      // apply the css rule
      $("p").animate({'font-size':fontSize});
    })
    $('#plusFont').click(function(){
      var fontSize = parseInt($("p").css("font-size"));
      fontSize = fontSize + 2 + "px";
      $("p").animate({'font-size':fontSize});
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
    // setting the page to #30343a on click
    $('#night').click(function(){
      // when button clicked change the body rules
      $('body').css({
        backgroundColor: "#30343a",
        color: "white"
      })
      // set the buttons to be visisble
      $('.buttons').css({'borderColor': "white"})
      // make the #30343a a tags to white so you can see them
      $('a').css({
        color: 'white',
        textDecoration: 'underline'
      })
      // same applies to nav
      $('nav').css({
        color: 'white',
        textDecoration: 'underline'
      })
    })
    // setting the page to white
    $('#day').click(function(){
      $('body').css({
        backgroundColor: "white",
        color: "#30343a"
      })
      $('.buttons').css({
        'borderColor': "#30343a"
      })
      $('a').css({
        color: '#30343a'
      })
      $('nav').css({
        color: '#30343a'
      })
    })
  }

})
