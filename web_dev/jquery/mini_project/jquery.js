$("#title").css({
	"color": "gold",
	"font-size": "4em",
});

$("#list").css({
	"width": "50%",
	"color": "white"
});

$("#photo").click(function() {
	$("#photo").fadeOut(5000);
	$("#photo").prepend('<img id="photo" src="chris_cornell.jpg"/>').fadeIn(5000);
});

$("#rock").one("click", function() {
	$('<h1 id="rip">Rest In Peace Chris Cornell</h1>').insertBefore("#list");
});

