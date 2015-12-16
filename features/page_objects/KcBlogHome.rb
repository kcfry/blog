require 'page-object'

class KcBlogHome
	include PageObject
	
	page_url 'kcblog.com'
	
	link(:blog_title, id: 'post_title')
	span(:author, id: 'author')
	span(:date, id: 'date')
	link(:create, id:'create_post')
	link(:comment, id: 'comment_link')
end
