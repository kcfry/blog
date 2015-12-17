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
end

When /^I view the comments page$/ do
	visit_page(KcBlogHome) do |page|
	page.comment
	page.post_comment
	end
end

Then /^I should see all the comments and authors names$/ do
	on_page(CommentPage) do |page|
	expect(page.post_author?)
	expect(page.posted_comment?)
	end
end

When /^I read the comments dates$/ do
	visit_page(KcBlogHome) do |page|
	page.comment
	page.post_comment
	end
end

Then /^the comments should be oldest at the top$/ do
	on_page(CommentPage) do |page|
	expect(page.post_date[0]).to be < page.post_date[1]
	end
end
