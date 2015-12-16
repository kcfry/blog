Feature: Read entire post
	As a reader I want to read an entire post
	
	@read
	Scenario:Should be able to click the post title to get entire post
		When I click the title of a post
		Then I should be taken to that entire post
		
	@read
	Scenario:The entire post should have the title and author on it
		When I view a post
		Then I should see the title and author name on the post
	
	@read
	Scenario:should be a link back to the home page
		When I am on a post
		Then I should be able to click a link back to the home page