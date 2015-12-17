Feature: Comment on a post
	As a reader I want to be able to comment on a post so people get to hear my great opinions.
	
	@comment
	Scenario:Should be able to add multiple comments
		When I comment on a post
		Then I should be able to comment again
		
	@comment
	Scenario:should be able to see all the comments and authors
		When I view the comments page
		Then I should see all the comments and authors names
		
	@comment
	Scenario:Comments should be ordered at the top by oldest
		When I read the comments dates
		Then the comments should be oldest at the top