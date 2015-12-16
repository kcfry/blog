require 'page-object'
include PageObject::PageFactory

When /^I click the title of a post$/ do
	visit_page(KcBlogHome) do |page|
	page.blog_title
	end
end

Then /^I should be taken to that entire post$/ do
	on_page(PostPage) do |page|
	expect(page.post_body?)
	end
end

When /^I view a post$/ do
	visit_page(KcBlogHome) do |page|
	page.blog_title
	end
end

Then /^I should see the title and author name on the post$/ do
	on_page(PostPage) do |page|
	expect(page.post_title?)
	expect(page.post_author?)
	end
end

When /^I am on a post$/ do
	visit_page(KcBlogHome) do |page|
	page.blog_title
	end
end

Then /^I should be able to click a link back to the home page$/ do
	on_page(PostPage) do |page|
	expect(page.home_link?)
	end
end