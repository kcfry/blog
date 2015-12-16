require 'page-object'
include PageObject::PageFactory

When /^I create a new post$/ do
	visit_page(KcBlogHome) do |page|
	page.create
	end
end

Then /^I should be allowed to enter title, body, author name$/ do
	on_page(CreatePage) do |page|
	expect(page.enter_author?)
	expect(page.enter_date?)
	expect(page.enter_title?)
	end
end

When /^I access the new post page$/ do
	visit_page(KcBlogHome) do |page|
	page.create
	end
end

Then /^I should be able to go directly to the home page$/ do
	on_page(CreatePage) do |page|
	expect(page.home_link)
	end
end