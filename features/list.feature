Feature: List of Posts
	As a reader I want to read posts from my favorite blogger to learn new things.
	
	@list
	Scenario:Posts should have a title and author
		When I visit the blog site
		Then the author name and title should be on the post
		
	@list 
	Scenario:Posts should be ordered by date at the top of the page
		When a post date is checked
		Then it should be more recent than the last post