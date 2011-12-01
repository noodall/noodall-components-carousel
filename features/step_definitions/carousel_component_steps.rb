Given /^add multiple slides to the carousel$/ do
  3.times do |i|
    Factory(:asset, :title => "Asset #{i}")
  end
  page.find(:css, 'span.add-multi-asset').click
  sleep 1
  within "#asset-browser" do
    within "#browser-list li[title='Asset 0']" do
      click_link "Add"
    end
    within "#browser-list li[title='Asset 1']" do
      click_link "Add"
    end
    within "#browser-list li[title='Asset 2']" do
      click_link "Add"
    end
  end
  page.find(:css, 'li.action a').click
  sleep 1
  within "#fancybox-content" do
    click_button 'Save'
  end
  sleep 1
  click_button 'Publish'
  sleep 10
end

Then /^I should see the slides within the slot$/ do
  assert page.has_css?('div.slide', count: 3)
end
