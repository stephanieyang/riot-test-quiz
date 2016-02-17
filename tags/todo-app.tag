<todo-app>

	<div class="todoapp">
		<button onclick={ toggleShow }>Toggle Show</button>
		<h3>Hello <small show={ x }>woman</small> { opts.user.first } { user.last }! </h3>


<!-- 		<input id="ketchup" name="special" type="text">
		<button onclick={ getInput }>IDs and Name attributes available like this.id this.name</button> -->

		<form>
			<div class="form-group">
				<label for="todoInput">Enter your todo</label>
				<input type="text" class="form-control" onkeypress={ addItem }>
			</div>
		</form>

		<h3>You have { todoList.length } items todo</h3>
		<ol>
			<todo-item each={ todoItem in todoList }></todo-item>
		</ol>

	</div>

	<script>
		// console.log('todo-app:', this.opts);
		// console.log('userObj', this.opts.user);
		// console.log('todoAry:', this.opts.todoList);

		this.user = this.opts.user;
		this.todoList = this.opts.todoList

		this.x = true;

		this.toggleShow = function(event) {
			this.x = !this.x;
		};

		this.addItem = function(event) {
			console.log('event.item', event.item);
			if (event.which === 13) {
				var newTodoItem = event.currentTarget.value;
				this.todoList.push(newTodoItem);
				event.currentTarget.value = "";
			} else {
				return true;
			}
		};

		this.on('update', function() {
			console.log('parent update', this);
		});



		// this.getInput = function(event) {
		// 	console.log(this.ketchup.value);
		// };

	</script>

	<style>
		.todoapp {
			background-color: orange;
			padding: 30px;
		}
	</style>
</todo-app>
