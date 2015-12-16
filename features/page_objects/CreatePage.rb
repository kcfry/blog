require 'page-object'

class CreatePage
	include PageObject

	text_field(:enter_author, id: 'post_author')
	text_field(:enter_body, id: 'post_body')
	text_field(:enter_title, id: 'post_title')
	link(:home_link, text: 'home')

	
end
