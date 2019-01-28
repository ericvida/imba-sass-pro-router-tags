require('./router/router_tag')

tag App
	def build
		R.init
			root: 'home'
			views: ['home', 'hello', 'world']
			render: self:render.bind(self)
			helpers: global:L = require('lodash')
	def currentRouteUpper
		R:view[0].toUpperCase + R:view.slice(1)
	def render
		<self>
			# <header><h4> 
			<header>
				<h4> "Pro-Router With Tags — " + currentRouteUpper
			<nav>
				<ref view="home"> 
					<button> "Home"
				<ref view="hello">
					<button> "Hello"
				<ref view="world">
					<button> "World"

Imba.mount <App>
