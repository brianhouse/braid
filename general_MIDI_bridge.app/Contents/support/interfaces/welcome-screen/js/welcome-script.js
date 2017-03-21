/* Author: gmo
   Company: Cycling74
   About: Max6 Welcome Screen
*/

//GLOBAL
//------
var LOGO_START_INDEX = 100;
var LOGO_END_INDEX = 208;
var LOGO_CHANGE_RATE = 2000;
var LOCAL_IMG_DIR = "img/";
var REOMTE_IMG_DIR = "http://cycling74.com/wp-content/themes/cycling74/img/";

var N_ROWS = 2;
var N_COLS = 3;

var newpatcher = new Object();
newpatcher.label = "Get Started";
newpatcher.link = "maxmessage:newpatcher";
newpatcher.img = LOCAL_IMG_DIR+"newpatcher-blockimage.png";
newpatcher.heading = "New Patcher";
newpatcher.blurb = "Open up a new document.";

var opentoolbox = new Object();
opentoolbox.label = "Get New Tools";
opentoolbox.link = "maxmessage:opentoolbox";
opentoolbox.img = LOCAL_IMG_DIR+"toolbox-blockimage.png";
opentoolbox.heading = "Max Toolbox";
opentoolbox.blurb = "Download extensions built by the Max community.";

var openprojects = new Object();
openprojects.label = "Get Inspired";
openprojects.link = "maxmessage:openprojects";
openprojects.img = LOCAL_IMG_DIR+"projects-blockimage.png";
openprojects.heading = "Made with Max";
openprojects.blurb = "See what people are doing with Max, and submit your own projects to the online gallery.";

var openforums = new Object();
openforums.label = "Get Connected";
openforums.link = "maxmessage:openforums";
openforums.img = LOCAL_IMG_DIR+"forums-blockimage.png";
openforums.heading = "Forums";
openforums.blurb = "Tap into the Max community bulletin board.";

var opendocs = new Object();
opendocs.label = "Get Smart";
opendocs.link = "maxmessage:opendocs";
opendocs.img = LOCAL_IMG_DIR+"tutorials-blockimage.png";
opendocs.heading = "Documentation";
opendocs.blurb = "Learn all about Max objects, patching techniques, and underlying concepts.";

var openvideos = new Object();
openvideos.label = "Get TV";
openvideos.link = "maxmessage:openvideos";
openvideos.img = LOCAL_IMG_DIR+"videos-blockimage.png";
openvideos.heading = "Videos";
openvideos.blurb = "Watch video tutorials, learn tips and tricks, and see Max in action.";

var openfaq = new Object();
openfaq.label = "Get Info";
openfaq.link = "maxmessage:openfaq";
openfaq.img = LOCAL_IMG_DIR+"faq-blockimage.png";
openfaq.heading = "FAQ";
openfaq.blurb = "The lowdown on products, sales, authorization, and C74 contact info.";

var openshop = new Object();
openshop.label = "Get Stuff";
openshop.link = "maxmessage:openshop";
openshop.img = LOCAL_IMG_DIR+"store-blockimage.png";
openshop.heading = "Shop";
openshop.blurb = "Software, hardware, music and merchandise.";

var blocks = [newpatcher, opentoolbox, openprojects, openforums, opendocs, openvideos, openfaq, openshop];



/*JSON doesn't work in windows jweb???
//------------------------------------

var blocks = jQuery.parseJSON('{"Get Started":     {"link":"maxmessage:newpatcher","img":"'+LOCAL_IMG_DIR+'newpatcher-blockimage.png'+'", "heading":"New Patcher","blurb":"Open up a new document."},'+
								'"Get New Tools" : {"link":"maxmessage:opentoolbox","img":"'+LOCAL_IMG_DIR+'toolbox-blockimage.png", "heading":"Max Toolbox","blurb":"Download extensions built by the Max community."},'+
								'"Get Inspired" :  {"link":"maxmessage:openprojects","img":"'+LOCAL_IMG_DIR+'projects-blockimage.png", "heading":"Projects","blurb":"See what people are doing with Max, and submit your own projects to the online gallery."},'+
								'"Get Connected" : {"link":"maxmessage:openforums","img":"'+LOCAL_IMG_DIR+'forums-blockimage.png", "heading":"Forums","blurb":"Tap into the Max community bulletin board."},'+
								'"Get Smart":      {"link":"maxmessage:opendocs","img":"'+LOCAL_IMG_DIR+'tutorials-blockimage.png", "heading":"Documentation","blurb":"Learn all about Max objects, patching techniques, and underlying concepts."},'+
								'"Get TV" :        {"link":"maxmessage:openvideos","img":"'+LOCAL_IMG_DIR+'videos-blockimage.png", "heading":"Videos","blurb":"Watch video tutorials, learn tips and tricks, and see Max in action."},'+
								'"Get Info" :      {"link":"maxmessage:openfaq","img":"'+LOCAL_IMG_DIR+'faq-blockimage.png", "heading":"FAQ","blurb":"The lowdown on products, sales, authorization, and C74 contact info."},'+
								'"Get Stuff" :     {"link":"maxmessage:openshop","img":"'+LOCAL_IMG_DIR+'store-blockimage.png", "heading":"Shop","blurb":"Software, hardware, music and merch."}' +
								'}');*/


//MAIN
//----
$(document).ready(function () {
	genHeader();
	genMain();
});

function genHeader() {
	//$('header').append('<div id="c74logoDiv"><img id="c74logoBg" src="'+LOCAL_IMG_DIR+'100.jpg"></div><img id="c74logo" src="'+LOCAL_IMG_DIR+'/c74-icon-fff.png" alt="Max 6"></img>');
	$('header').append('<img id="max6logo" src="'+LOCAL_IMG_DIR+'/max6logo.png" alt="Max 6">');
	//var timeoutID = window.setTimeout(genDynamicLogo(), LOGO_CHANGE_RATE);
}



/*
function getRandomLogoBgSrc() {
	var myIndex = Math.floor((Math.random()*LOGO_END_INDEX+LOGO_START_INDEX));
	return REMOTE_IMG_DIR+myIndex+'.jpg';
}
*/

function genMain() {
	/*
	JSON doesn't work in windows jweb???
	//------------------------------------
	$.each(blocks, function(blockname, blockdata) {
		console.log(blockname, blockdata);
		$('#main').append('<a class="blocklink" href="'+blockdata.link+'"><div class="block"><label>'+blockdata.label+'</label><img src="'+blockdata.img+'"><h2>'+blockdata.heading+'</h2><div class="blurb">'+blockdata.blurb+'</div></div></a>');
	});
	*/
	
	for(var i=0;i<blocks.length;i++) {
		$('#main').append('<a class="blocklink" href="'+blocks[i].link+'"><div class="block"><label>'+blocks[i].label+'</label><img class="blockimage" src="'+blocks[i].img+'"><h2>'+blocks[i].heading+'</h2><div class="blurb">'+blocks[i].blurb+'</div></div></a>');
	}
	
	$('.block').hover(function() {
		$(this).css("background-color", "#333");
		$(this).find('h2').css("color", "#fff");
		$(this).find('.blurb').css("color", "#fff");
		var myImage = $($(this).find('img'));
		var myImageSource = myImage.attr('src');
		myImage.attr('src', myImageSource.substring(0, myImageSource.length-4)+"-on.png");
	},
	function() {
		$(this).css("background-color", "#e8e8e3");
		$(this).find('h2').css("color", "#3c3c36");
		$(this).find('.blurb').css("color", "#3c3c36");
		var myImage = $($(this).find('img'));
		var myImageSource = myImage.attr('src');
		myImage.attr('src', myImageSource.substring(0, myImageSource.length-7)+'.png');
	});
	
	$('.blockimage').bind('click', function() {
		$(this).parent().parent()[0].click();
	});
	
	var _preventDefault = function(evt) { evt.preventDefault(); };
	$("*").bind("dragstart", _preventDefault).bind("selectstart", _preventDefault);
}





















