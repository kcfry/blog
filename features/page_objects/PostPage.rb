require 'page-object'

class PostPage
	include PageObject
	
	div(:body, id: 'post_body')
	h2(:title, id:'post_title')
	span(:author, id: 'post_author')
	link(:home_link, id: 'home')
	
end