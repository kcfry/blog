require 'page-object'
include PageObject::PageFactory

When /^I visit the blog site$/ do
	visit_page(KcBlogHome) do 
	end
end

Then /^the author name and title should be on the post$/ do
	on_page(KcBlogHome) do |page|
	expect(page.author?)
	expect(page.date?)
	end
end

When /^a post date is checked$/ do
	visit_page(KcBlogHome) do 
	end
end

Then /^it should be more recent than the last post$/ do
	on_page(KcBlogHome) do |page|
	expect(page.date[0]). to be > (page.date[1])
	end
end
