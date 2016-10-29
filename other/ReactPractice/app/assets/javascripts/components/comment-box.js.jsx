class CommentBox extends React.Component {
	constructor(){
		super();
		this.state = {
			comments: [
			{user: "nickb@chilling.com", content: "This site is so tight"},
			{user: "jalexy@sexy.com", content: "I am predjudiced against hipsters"},
			{user: "who@what.com", content: "Faraz is my hero"},
			{user: "Mat", content: "I like pizza.  Is that we're talking about?"}
			]
		}
	}

	addComment(userInput){
		var comment = {user: "Anonymous", content: userInput}
		var comments = this.state.comments
		comments.push(comment);
		this.setState({comments: comments})

	}


	render(){
		return(
			<div className = "comment-wrapper">
			<CommentList comments = {this.state.comments} />
			<CommentForm onCommentAdd={this.addComment.bind(this)} />

			</div>
		)
	}
}