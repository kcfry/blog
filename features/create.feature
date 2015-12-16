Feature: Create a post
	As an author I want to create a post to share my knowledge
	
	@create
	Scenario:A new post should allow me to enter title, body, author name.
		When I create a new post
		Then I should be allowed to enter title, body, author name
		
	@create
	Scenario:Should be able to access the home page from the new post page
		When I access the new post page
		Then I should be able to go directly to the home page