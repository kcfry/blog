require 'page-object'

class CommentPage
	include PageObject
	
	text_field(:comment_body, id:'post_body')
	button(:post_comment, id:'post_button')
	