global:Router = require('pro-router/standalone')
tag App
	def build
		R.init
			root: 'main-view', 
			views: ['main-view', 'hello', 'world']
			render: do
				console.log(R.view)
	def render
		<self> 
			<header>
				<h4> "Home" if R.view == 'root'
				<h4> "Hello" if R.view == 'hello'
				<h4> "World!" if R.view == 'world'
			<div>
				<button> "home"
				<button> "Hello"
				<button> "World!"
Imba.mount <App>
