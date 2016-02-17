var first_name = prompt("Please enter your first name");
var last_name = prompt("Please enter your last name");
var name = first_name + " " + last_name;

var questionList = [
{
	text : "What's your favorite color?",
	name : "color",
	val1 : "red",
	val2 : "yellow",
	val3 : "blue",
	val4 : "not a primary color"
},
{
	text : "What's your favorite hobby?",
	name : "hobby",
	val1 : "biking",
	val2 : "knitting",
	val3 : "video games",
	val4 : "something cool"
},
{
	text : "What's your favorite subject in school?",
	name : "subject",
	val1 : "art",
	val2 : "math",
	val3 : "science",
	val4 : "English"
}];

// RIOT MOUNT
riot.mount('quiz', {
	name : name,
	questionList : questionList
});