<quiz>

	<div class="quiz">
		<h3>Hello { opts.name }! </h3>


		<form>
			<div class="form-group">
				<question each={ question in questionList }></question>
			</div>
			<button type="button" onclick={ getResults }>Get Results</button>
		</form>

	</div>
	<div id="results"></div>

	<script>

		var QuizResult = Parse.Object.extend('QuizResult');

		this.getResults = function(event) {
			//var numberAnswered = $( "input:checked" );
			this.on('update', function(){
			    console.log($("input:checked"));
			    console.log($("input:checked").length);
			    console.log(this.opts);
			    console.log(this.opts.questionList);
			   	var answered = $("input:checked");
			   	var questionList = this.opts.questionList;
			   	if(answered.length === questionList.length) {
			   		var resultText = "<p>Your name is " + this.opts.name + "! ";
			   		for(var i = 0; i < questionList.length; i++) {
			   			resultText += questionList[i].resultText;
			   			if(i != (questionList.length - 1)) {
			   				resultText += " ";
			   			}
			   			
			   		}
			   		resultText += "</p>";
			   		$("#results").html(resultText);
				   	var quizResult = new QuizResult();
			   		for(var i = 0; i < questionList.length; i++) {
				   		// create Parse object and store it
			   			quizResult.set(questionList[i].name,questionList[i].answer);			   			
			   		}
			   		quizResult.save("name", this.opts.name);
			   		quizResult.save({
						success: function(result) {
							console.log("SAVED!");

						}, error: function(error){
							alert("Error " + error.message);
						}

					});



			   		/*
			   		$("#results").html("<p>Your name is " + this.opts.name + "! You like " +  $(answered[1]).val() + ", the color " + $(answered[0]).val() + ", and your favorite subject in school is " + $(answered[2]).val() + "!</p>");
			   		*/
			   	} else {
			   		alert("Please answer all questions.");
			   	}
		  	})
			//console.log(event);
			//console.log($("input:checked"));
			//console.log(numberedAnswered.length);
			//console.log("Results go here");

		};

		this.on('update', function() {
			console.log('parent update', this);
		});

	</script>

	<style>
	</style>
</quiz>
