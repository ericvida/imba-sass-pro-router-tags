require('./router/router_tag')

tag App
	def build
		R.init
			root: 'home'
			views: ['home', 'hello', 'world']
			render: self:render.bind(self)
			helpers: global:L = require('lodash')

	def render
		<self>
			<header><h4> R:view[0].toUpperCase + R:view.slice(1)
			<div>
				<ref view="home"> "Home"
				<ref view="hello"> "Hello"
				<ref view="world"> "World"

Imba.mount <App>
