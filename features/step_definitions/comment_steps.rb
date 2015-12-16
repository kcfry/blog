require 'page-object'
include PageObject::PageFactory

When /^I comment on a post$/ do
	visit_page(KcBlogHome) do |page|
	page.comment
	page.post_comment
	end
end

Then /^I should be able to comment again$/ do
	on_page(CommentPage) do |page|
	expect(page.post_comment?)
end

When /^I view the comments page$/ do
	visit_page(KcBlogHome) do |page|
	page.comment
	
end

Then /^I should see all the comments and authors names$/ do
end

When /^I read the comments$/ do
end

Then /^the comments should be oldest at the top$/ do
end