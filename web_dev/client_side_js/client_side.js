var listItems = document.getElementsByTagName("li");
console.log(listItems);
listItems[0].style.fontSize = "2em";

var header = document.getElementById("header");
header.style.fontFamily = "Helvetica";

var photo = document.getElementById("photo");
photo.style.borderRadius = "25px";
photo.style.width = "75%";

var table = document.createElement('table');
var tableHeader = document.createElement('th');
var tableCell1 = document.createElement('td');
var tableCell2 = document.createElement('td');
table.appendChild(tableHeader);
tableHeader.appendChild(tableCell1);
tableHeader.appendChild(tableCell2);
tableCell1.innerText = "Table Column 1";
tableCell2.innerText = "Table Column 2";
var body = document.getElementById('body');
body.appendChild(table);

var p = document.createElement('p');
var content = document.createTextNode("Adding stuff to DOM");
p.appendChild(content);
body.appendChild(p);

for (i=0; i < listItems.length; i++) {
	listItems[i].style.textDecoration = "underline";
};

function changeBackground() {
	var everything = document.querySelector("body");
	var text = document.querySelector("*");
	everything.style.backgroundColor = "blue";
	text.style.color = "white";
}

photo.addEventListener("click", changeBackground);