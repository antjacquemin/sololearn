var res = document.getElementById("res");
var buttons = document.getElementById("btns").childNodes;  

function operation(e) {
    var btn = e.target || e.srcElement;
    switch(btn.id) {
        case "btnClr":
            res.innerHTML = "";
            break;
        case "btnEql":
            var exprDec = res.innerHTML.replace(/\d+/g, num => parseInt(num, 2));
            res.innerHTML = Math.floor(eval(exprDec)).toString(2);
            break;
        default:
            res.innerHTML += btn.innerHTML;     
    }      
}

for (let button of buttons) {
    button.onclick = operation;
}