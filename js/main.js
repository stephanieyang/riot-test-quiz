var first_name = prompt("Please enter your first name");
var last_name = prompt("Please enter your last name");
var name = first_name + " " + last_name;


Parse.initialize("ouKXPtWiZAx8J2e0fwDQdmhakl7bCmkqryh7Ii7X", "1bdFoJGEtDw60Bt1MGic9KCJY3n7SRykyIQ2olYr");
	

var questionList = [
{
	text : "What's your favorite color?",
	name : "color",
	val1 : "red",
	val2 : "yellow",
	val3 : "blue",
	val4 : "not a primary color",
	responseText : ["Your favorite color is ",","],
	resultText : ""
},
{
	text : "What's your favorite hobby?",
	name : "hobby",
	val1 : "biking",
	val2 : "knitting",
	val3 : "video games",
	val4 : "something cool",
	responseText : ["your hobby is ",","],
	resultText : ""
},
{
	text : "What's your favorite subject in school?",
	name : "subject",
	val1 : "art",
	val2 : "math",
	val3 : "science",
	val4 : "English",
	responseText : ["and your favorite subject is ","!"],
	resultText : ""
}];

// RIOT MOUNT
riot.mount('quiz', {
	name : name,
	questionList : questionList
});