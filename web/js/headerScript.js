


var c = document.getElementById('ruLang');
console.log(c);
c.onclick = function () {
    var href = document.location.href;
    var now  = new Date();
    var time = now.getTime();
    time += 1000*10 ;
    now.setTime(time);
    document.cookie = "lang=ru" + ";expires="+now.toUTCString()+"path=/";
    document.location = document.location.href;
}

var c = document.getElementById('enLang');
console.log(c);
c.onclick = function () {
    var href = document.location.href;
   
    var now  = new Date();
    var time = now.getTime();
    time += 1000*10 ;
    now.setTime(time);
    document.cookie = "lang=en" + ";expires="+now.toUTCString()+"path=/";
    document.location = document.location.href;
}

var c = document.getElementById('uaLang');
console.log(c);
c.onclick = function () {
    var href = document.location.href;
    var now  = new Date();
    var time = now.getTime();
    time += 1000*10 ;
    now.setTime(time);
    document.cookie = "lang=ua" + ";expires="+now.toUTCString()+"path=/";
    document.location = document.location.href;
}