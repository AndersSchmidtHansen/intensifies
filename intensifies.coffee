# intensifies.js - a "Build Shit®" plugin for creating intensifies-ish images
# version "doge"
# (☻) 2014 @lichine
# andersschmidt.com
# brightloops.org | pitcherific.com | actioncaller.com
  
$.fn.extend
  intensifies: (options) ->
    self = $.fn.intensifies
    opts = $.extend {}, self.default_options, options
    $(this).each (i, el) ->
      self.init el, opts
 
$.extend $.fn.intensifies,
  default_options:
    trigger : 'click'
    text : 'doge'
    color : 'white'
    intensification : 1
    dundunduuun : false
     
  init: (el, opts) ->
    this.intensify el, opts
  
  intensify : (el, opts) ->
    $(el).wrap "<span class='intensifies-wrapper'></span>"
    $('.intensifies-wrapper').attr('data-caption', "[#{opts.text} Intensifies]")
    $("head").append """
    <style>
      .intensifies-wrapper img { 
        -webkit-transform-origin: 50% 5%; 
        -moz-transform-origin: 50% 5%; 
        -ms-transform-origin: 50% 5%; 
        transform-origin: 50% 5%; 
      }
      .intensifies-wrapper { display: inline-block; overflow: hidden; }
      .intensifies-wrapper, .intensifies-wrapper * { position: relative; }
      .intensifies-wrapper:before{ 
        content: attr(data-caption);
        position: absolute;
        left: 0;
        bottom: 8%;
        right: 0;
        width: 100%;
        font-family: Arial, sans-serif;
        font-size: 32px;
        color: #{opts.color};
        text-shadow:  
         -1px -1px 0 #000,
         1px -1px 0 #000,
         -1px 1px 0 #000,
         1px 1px 0 #000;
        text-align: center;
        text-transform: uppercase;
        z-index: 1;
        
      }
    </style>"""
      
    if opts.dundunduuun is true
      dun = 1.25
      dundun = 1.50
      duuun = 2 
      setTimeout () ->
         $(el).css({"transform":"scale(#{dun})", "-webkit-transform":"scale(#{dun})", "-moz-transform":"scale(#{dun})"})
         setTimeout () ->
           $(el).css({"transform":"scale(#{dundun})", "-webkit-transform":"scale(#{dundun})", "-moz-transform":"scale(#{dundun})"})
           setTimeout () ->
             $(el).css({"transform":"scale(#{duuun})", "-webkit-transform":"scale(#{duuun})", "-moz-transform":"scale(#{duuun})"})
             setInterval ->
                $(el).animate(left: opts.intensification, 1).animate(top: opts.intensification, 1).animate(top: -opts.intensification, 1).animate(left: -opts.intensification, 1)
              ,50               
            , 700
          , 1000
       , 800
     
     else
      setInterval ->
        $(el).animate(left: opts.intensification, 1).animate(top: opts.intensification, 1).animate(top: -opts.intensification, 1).animate(left: -opts.intensification, 1)
      ,50 
      
         
    
