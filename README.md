intensifies.js
==============

Intends to turn boring images into intensifies, by the power of jQuery or fail gloriously. Like this...

![intensifies action](http://i.imgur.com/IaLG69W.gif "Intensifies in all its glory")


installation
---------------------------------------

* View the Codepen example: (http://codepen.io/AndersSchmidtHansen/pen/dmuED)
* Check pulse, if there then...
* Copy the minified version to your project (remember jQuery)
* Sip coffee in an epic way


how-to-use (coffeescript example)
---------------------------------------

```
$(".intensifies").click -> // you can omit this, but making it run on page load is really not a good idea
  $(this).intensifies
    text : "Doge" // change this to whatever, will always be appended with "intensifies"
    intensification : 5 // the higher the value, the more intense it gets!
    dundunduuun : true // for extra jump-scare action dunduns, set this to true
    color : "red" // change this to something colorful and pretty
```



[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/AndersSchmidtHansen/intensifies/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

