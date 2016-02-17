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

		this.getResults = function(event) {
			//var numberAnswered = $( "input:checked" );
			this.on('update', function(){
			    console.log($("input:checked"));
			    console.log($("input:checked").length);
			   	var answered = $("input:checked");
			   	if(answered.length === 3) {
			   		$("#results").html("<p>Your name is " + this.opts.name + "! You like " +  $(answered[1]).val() + ", the color " + $(answered[0]).val() + ", and your favorite subject in school is " + $(answered[2]).val() + "!</p>");
			   	} else {
			   		alert("Please answer all questions");
			   	}
		  	})
			//console.log(event);
			//console.log($("input:checked"));
			//console.log(numberedAnswered.length);
			//console.log("Results go here");

		}

		this.on('update', function() {
			console.log('parent update', this);
		});

	</script>

	<style>
	</style>
</quiz>
