require 'page-object'

class CommentPage
	include PageObject
	
	text_field(:comment_body, id:'post_body')
	button(:post_comment, id:'post_button')
	div(:comments, id:'posted_commment')
	span(:author, id: 'post_author')
	span(:date, id: 'post_date')
end
