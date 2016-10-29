class Printer extends React.Component {
	constructor(){
		super();
		this.state = {
			content: "Dude, I'm chilling bruh."
		}
	}

	updateContent(event){
		this.setState({content: event.target.value})
	}

	render(){
		return(
			<div>
			<h3>{this.state.content}</h3>
			<input 
			type="text" 
			value={this.state.content}
			onChange={this.updateContent.bind(this)}
			/>
			</div>
		)
	}




}