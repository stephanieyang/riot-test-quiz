<question>
	<div class="question">
	{ question.text }<br />
	<input type="radio" name="{ question.name }" value="{ question.val1 }" onclick={ registerAnswer }> { question.val1 }<br />
	<input type="radio" name="{ question.name }" value="{ question.val2 }" onclick={ registerAnswer }> { question.val2 }<br />
	<input type="radio" name="{ question.name }" value="{ question.val3 }" onclick={ registerAnswer }> { question.val3 }<br />
	<input type="radio" name="{ question.name }" value="{ question.val4 }" onclick={ registerAnswer }> { question.val4 }
	</div>
	<script>

	this.foo = function(event) {
		alert('clicked');
	}

	this.answer = "";
	this.text = "";

	this.registerAnswer = function(event) {
		console.log($("input[name=" + this.question.name + "]:checked"));
		//console.log("val",$($("input[name=" + this.question.name + "]:checked")[0]).val());
		this.answer = $($("input[name=" + this.question.name + "]:checked")[0]).val();
		console.log(this.answer);
		this.text = this.question.responseText[0] + this.answer + this.question.responseText[1];
		this.question.resultText = this.text;
		this.question.answer = this.answer;
		console.log(this.text);
	}

		this.on('update', function() {
			console.log('parent update', this);
		});

		this.getResult = function(event) {
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

		};

	</script>

	<style scoped>
	</style>
</question>