<todo-item>
	<li class={ completed:done }>
		{ todoItem }
		<button onClick={ toggleDone }>Done</button>
		<button onclick={ removeItem }>Remove</button>
	</li>

	<script>
		console.log('todo-item:', this);

		this.done = false;

		this.toggleDone = function(event) {
			this.done = !this.done;
		};

		this.removeItem = function(event) {
			var index = this.todoList.indexOf(this.todoItem);
			this.todoList.splice(index, 1);
		}

		this.on('update', function() {
			console.log('child update');
		});




	</script>

	<style scoped>
		
		:scope {
			font-family: "Times New Roman";
		}		

		li {
			background-color: pink;
			padding: 10px;
			margin-bottom: 10px;
		}

		.completed {
			text-decoration: line-through;
			color: silver;
			font-style: italic;
		}
	</style>
</todo-item>