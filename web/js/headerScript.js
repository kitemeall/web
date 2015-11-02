


var c = document.getElementById('ruLang');
console.log(c);
c.onclick = function () {
    var href = document.location.href;
    document.cookie = "lang=ru"
    document.location = document.location.href;
}

var c = document.getElementById('enLang');
console.log(c);
c.onclick = function () {
    var href = document.location.href;
    document.cookie = "lang=en"
    document.location = document.location.href;
}

var c = document.getElementById('uaLang');
console.log(c);
c.onclick = function () {
    var href = document.location.href;
    document.cookie = "lang=ua"
    document.location = document.location.href;
}