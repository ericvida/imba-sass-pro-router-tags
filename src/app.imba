require('pro-router/standalone')

tag App
	def build
		R.init
			views: ['hello', 'world']
			render: self:render.bind(self)
			helpers: require('lodash')

	def go_home
		R.go("/")
	def go_hello
		R.go("/#/hello")
	def go_world
		R.go("/#/world")

	def render
		<self>
			<header>
				<h4> "Home" if R:view == 'root'
				<h4> "Hello" if R:view == 'hello'
				<h4> "World!" if R:view == 'world'
			<div>
				<button :tap="go_home"> "home"
				<button :tap="go_hello"> "Hello"
				<button :tap="go_world"> "World!"

Imba.mount <App>
