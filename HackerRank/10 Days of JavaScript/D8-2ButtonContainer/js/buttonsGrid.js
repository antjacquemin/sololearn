let vals = [1,2,3,6,9,8,7,4];
var buttons = [];
for (let val of vals) {
    buttons.push(document.getElementById("btn" + val));
}

var button = document.getElementById('btn5');
button.onclick = function() {
    vals.unshift(vals.pop());
    for (let i in vals) {
        buttons[i].innerHTML = vals[i];
    }
};