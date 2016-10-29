class HelloWorld extends React.Component {
	render(){
		return(
			<div>
			<h4>Yo Dude.  Whats good? </h4>
			{"S" + "u" + "h" + "h" + "h " + this.props.name}
			</div>
		)
	}


}